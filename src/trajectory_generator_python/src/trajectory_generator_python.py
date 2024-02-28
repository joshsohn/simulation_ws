#!/usr/bin/env python3

import numpy as np
import rospy
from functools import partial
import jax
import jax.numpy as jnp
import math
from utils import spline, random_ragged_spline
from geometry_msgs.msg import Pose, Quaternion, Vector3
from helpers import quat2yaw, saturate, simpleInterpolation, wrap
from snapstack_msgs.msg import State, Goal, QuadFlightMode, Wind
from structs import FlightMode

class TrajectoryGenerator:
    def __init__(self):
        # Initialize the ROS node with the default name 'my_node_name' (will be overwritten by launch file)
        rospy.init_node('my_node_name')

        self.alt_ = rospy.get_param('~alt', default=None)
        self.freq = rospy.get_param('~pub_freq', default=None)
        self.dt_ = 1.0 / self.freq

        self.vel_initpos_ = rospy.get_param("~vel_initpos")
        self.vel_take_ = rospy.get_param("~vel_take")
        self.vel_land_fast_ = rospy.get_param("~vel_land_fast")
        self.vel_land_slow_ = rospy.get_param("~vel_land_slow")
        self.vel_yaw_ = rospy.get_param("~vel_yaw")

        self.dist_thresh_ = rospy.get_param("~dist_thresh")
        self.yaw_thresh_ = rospy.get_param("~yaw_thresh")

        self.margin_takeoff_outside_bounds_ = rospy.get_param("~margin_takeoff_outside_bounds")

        # Room bounds
        self.xmin_ = rospy.get_param("~/room_bounds/x_min")
        self.xmax_ = rospy.get_param("~/room_bounds/x_max")
        self.ymin_ = rospy.get_param("~/room_bounds/y_min")
        self.ymax_ = rospy.get_param("~/room_bounds/y_max")
        self.zmin_ = rospy.get_param("~/room_bounds/z_min")
        self.zmax_ = rospy.get_param("~/room_bounds/z_max")

        self.traj_goals_full_, self.winds_full_ = self.generate_trajectory()
        self.index = 0

        self.flight_mode_ = FlightMode.GROUND
        self.pose_ = Pose()
        self.goal_ = Goal()
        self.init_pos_ = Vector3()
        self.wind_ = Wind()

        # Subscribe and publish
        rospy.Subscriber('/globalflightmode', QuadFlightMode, self.mode_cb)
        rospy.Subscriber('state', State, self.state_cb)
 
        self.pub_timer_ = rospy.Timer(rospy.Duration(self.dt_), self.pub_cb)
        self.pub_goal_ = rospy.Publisher('goal',Goal, queue_size=1)
        self.pub_wind_ = rospy.Publisher('wind',Wind, queue_size=1)

        rospy.sleep(1.0)  # To ensure that the state has been received

        self.reset_goal()
        self.goal_.p.x = self.pose_.position.x
        self.goal_.p.y = self.pose_.position.y
        self.goal_.p.z = self.pose_.position.z

        self.reset_wind()

        rospy.loginfo("Successfully launched trajectory generator node.")

        self.take_off()

        # Spin to keep the node alive and process callbacks
        rospy.spin()

    def take_off(self):
        # Check inside safety bounds, and don't let the takeoff happen if outside them
        xmin = self.xmin_ - self.margin_takeoff_outside_bounds_
        ymin = self.ymin_ - self.margin_takeoff_outside_bounds_
        xmax = self.xmax_ + self.margin_takeoff_outside_bounds_
        ymax = self.ymax_ + self.margin_takeoff_outside_bounds_
        if self.pose_.position.x < xmin or self.pose_.position.x > xmax or \
        self.pose_.position.y < ymin or self.pose_.position.y > ymax:
            rospy.logwarn("Can't take off: the vehicle is outside the safety bounds.")
            return

        # Takeoff initializations
        self.init_pos_.x = self.pose_.position.x
        self.init_pos_.y = self.pose_.position.y
        self.init_pos_.z = self.pose_.position.z
        # set the goal to our current position + yaw
        self.reset_goal()
        self.goal_.p.x = self.init_pos_.x
        self.goal_.p.y = self.init_pos_.y
        self.goal_.p.z = self.init_pos_.z
        self.goal_.psi = quat2yaw(self.pose_.orientation)

        self.reset_wind()

        # Take off
        self.flight_mode_ = FlightMode.TAKING_OFF
        rospy.loginfo("Taking off...")
        # then it will switch automatically to HOVERING

        # switch on motors after flight_mode changes, to avoid timer callback setting power to false
        self.goal_.power = True
    
    def mode_cb(self, msg):
    # FSM transitions:
    # Any state        --ESTOP--> [kill motors] and switch to ground mode
    # On the ground    --START--> Take off and then hover
    # Hovering         --START--> Go to init pos of the trajectory
    # Init pos of traj --START--> follow the generated trajectory
    # Init pos of traj --END--> switch to hovering where the drone currently is
    # Traj following   --END--> change the traj goals vector to a braking trajectory and then switch to hovering
    # Hovering         --END--> Go to the initial position, land, and then switch to ground mode

    # Behavior selector button to mode mapping
    # START -> GO   (4)
    # END   -> LAND (2)
    # ESTOP -> KILL (6)
        if msg.mode == msg.KILL:
            self.goal_.power = False
            self.goal_.header.stamp = rospy.Time.now()
            self.pub_goal_.publish(self.goal_)
            self.flight_mode_ = FlightMode.GROUND
            self.reset_goal()
            rospy.loginfo("Motors killed, switched to GROUND mode.")
            return  
        elif self.flight_mode_ == FlightMode.INIT_POS_TRAJ and msg.mode == msg.LAND:
            # Change mode to hover wherever the robot was when we clicked "END"
            # Need to send a current goal with 0 vel bc we could be moving to the init pos of traj
            self.reset_goal()
            self.goal_.p.x = self.pose_.position.x
            self.goal_.p.y = self.pose_.position.y
            self.goal_.p.z = self.alt_
            self.goal_.psi = quat2yaw(self.pose_.orientation)
            self.goal_.header.stamp = rospy.Time.now()
            self.pub_goal_.publish(self.goal_)
            self.flight_mode_ = FlightMode.HOVERING
            rospy.loginfo("Switched to HOVERING mode")
        # elif self.flight_mode_ == FlightMode.TRAJ_FOLLOWING and msg.mode == msg.LAND:
        #     # Generate a braking trajectory. Then, we will automatically switch to hover when done
        #     self.traj_.generateStopTraj(self.traj_goals_, self.index_msgs_, self.pub_index_)
        elif self.flight_mode_ == FlightMode.HOVERING and msg.mode == msg.LAND:
            # go to the initial position
            self.flight_mode_ = FlightMode.INIT_POS
            rospy.loginfo("Switched to INIT_POS mode")
    
    def state_cb(self, msg):
        self.pose_.position.x = msg.pos.x
        self.pose_.position.y = msg.pos.y
        self.pose_.position.z = msg.pos.z
        self.pose_.orientation = msg.quat
    
    def pub_cb(self, event):
        # on ground
        if self.flight_mode_ == FlightMode.GROUND:
            self.goal_.power = False  # Not needed but just in case, for safety

        # taking off
        elif self.flight_mode_ == FlightMode.TAKING_OFF:
            # TODO: spinup time

            takeoff_alt = self.alt_  # Don't add init alt bc the traj is generated with z = alt_
            # If close to the takeoff_alt, switch to HOVERING
            if abs(takeoff_alt - self.pose_.position.z) < 0.10 and self.goal_.p.z >= takeoff_alt:
                self.traj_goals_ = self.traj_goals_full_[self.index]
                # self.index_msgs_ = self.index_msgs_full_
                self.flight_mode_ = FlightMode.INIT_POS_TRAJ
                print(f"Take off completed, going to the initial position of trajectory {self.index+1}...")
            else:
                # Increment the z cmd each timestep for a smooth takeoff.
                # This is essentially saturating tracking error so actuation is low.
                self.goal_.p.z = saturate(self.goal_.p.z + self.vel_take_ * self.dt_, 0.0, takeoff_alt)

        # go to initial position of trajectory
        elif self.flight_mode_ == FlightMode.INIT_POS_TRAJ:
            finished = False
            self.goal_, finished = simpleInterpolation(self.goal_, self.traj_goals_[0], self.traj_goals_[0].psi, 
                self.vel_initpos_, self.vel_yaw_, self.dist_thresh_, 
                self.yaw_thresh_, self.dt_, finished)
            if finished:
                # Start following the generated trajectory if close to the init pos (in 2D)
                dist_to_init = math.sqrt(pow(self.traj_goals_[0].p.x - self.pose_.position.x, 2) +
                                        pow(self.traj_goals_[0].p.y - self.pose_.position.y, 2) +
                                        pow(self.traj_goals_[0].p.z - self.pose_.position.z, 2))
                delta_yaw = self.traj_goals_[0].psi - quat2yaw(self.pose_.orientation)
                delta_yaw = wrap(delta_yaw)
                if dist_to_init > self.dist_thresh_ or abs(delta_yaw) > self.yaw_thresh_:
                    rospy.loginfo("Can't switch to the generated trajectory following mode, too far from the init pos")
                    return
                self.pub_index_ = 0
                self.flight_mode_ = FlightMode.TRAJ_FOLLOWING
                self.wind_ = self.winds_full_[self.index]
                rospy.loginfo(f"Following trajectory {self.index+1}...")

        # follow trajectory
        elif self.flight_mode_ == FlightMode.TRAJ_FOLLOWING:
            self.goal_ = self.traj_goals_[self.pub_index_]
            # if self.pub_index_ in self.index_msgs_:
            #     print(self.index_msgs_[self.pub_index_])
            self.pub_index_ += 1
            if self.pub_index_ == len(self.traj_goals_):
                self.index += 1
                if self.index == len(self.traj_goals_full_):
                    self.flight_mode_ = FlightMode.LANDING
                    print("Landing...")
                    return
                self.traj_goals_ = self.traj_goals_full_[self.index]
                self.reset_wind()
                # self.index_msgs_ = self.index_msgs_full_
                self.flight_mode_ = FlightMode.INIT_POS_TRAJ
                print(f"Trajectory {self.index} completed, going to the initial position of trajectory {self.index+1}...")

        # go to initial pos?
        elif self.flight_mode_ == FlightMode.INIT_POS:
            # Go to init_pos_ but with altitude alt_ and current yaw
            finished = False
            dest = self.init_pos_
            dest.z = self.alt_
            self.goal_, finished = simpleInterpolation(self.goal_, dest, self.goal_.psi, self.vel_initpos_,
                                            self.vel_yaw_, self.dist_thresh_, self.yaw_thresh_,
                                            self.dt_, finished)
            if finished:  # land when close to the init pos
                self.reset_wind()
                self.flight_mode_ = FlightMode.LANDING
                print("Landing...")

        # If landing, decrease alt until we reach ground (and switch to ground)
        # The goal was already set to our current position + yaw when hovering
        elif self.flight_mode_ == FlightMode.LANDING:
            # Choose between fast and slow landing
            vel_land = self.vel_land_fast_ if self.pose_.position.z > (self.init_pos_.z + 0.4) else self.vel_land_slow_
            self.goal_.p.z -= vel_land * self.dt_

            if self.goal_.p.z < 0:  # Don't use init alt here. It's safer to try to land to the ground
                # Landed, kill motors
                self.goal_.power = False
                self.flight_mode_ = FlightMode.GROUND
                print("Landed")

        # Apply safety bounds
        self.goal_.p.x = saturate(self.goal_.p.x, self.xmin_, self.xmax_)  # val, low, high
        self.goal_.p.y = saturate(self.goal_.p.y, self.ymin_, self.ymax_)
        self.goal_.p.z = saturate(self.goal_.p.z, self.zmin_, self.zmax_)

        self.goal_.header.stamp = rospy.Time.now()  # Set current time

        # Goals should only be published here because this is the only place where we
        # apply safety bounds. Exceptions: when killing the drone and when clicking END at init pos traj
        self.pub_wind_.publish(self.wind_)
        self.pub_goal_.publish(self.goal_)
    
    def generate_trajectory(self):
        print("Generating trajectories...")
        # Seed random numbers
        seed = 0
        key = jax.random.PRNGKey(seed)

        # Generate smooth trajectories
        num_traj = 5
        T = 30
        num_knots = 6
        poly_orders = (9, 9, 9, 6)
        deriv_orders = (4, 4, 4, 2)
        min_step = jnp.array([-2., -2., 0, -jnp.pi/6])
        max_step = jnp.array([2., 2., 2., jnp.pi/6])
        min_knot = jnp.array([-jnp.inf, -jnp.inf, -jnp.inf, -jnp.pi/3])
        max_knot = jnp.array([jnp.inf, jnp.inf, jnp.inf, jnp.pi/3])

        key, *subkeys = jax.random.split(key, 1 + num_traj)
        subkeys = jnp.vstack(subkeys)
        in_axes = (0, None, None, None, None, None, None, None, None)
        t_knots, knots, coefs = jax.vmap(random_ragged_spline, in_axes)(
            subkeys, T, num_knots, poly_orders, deriv_orders,
            min_step, max_step, min_knot, max_knot
        )

        # Sampled-time simulator
        @partial(jax.vmap, in_axes=(None, 0, 0))
        def simulate(ts, t_knots, coefs):
            """TODO: docstring."""
            # Construct spline reference trajectory
            def reference(t):
                x_coefs, y_coefs, z_coefs, Ψ_coefs = coefs
                x = spline(t, t_knots, x_coefs)
                y = spline(t, t_knots, y_coefs)
                z = spline(t, t_knots, z_coefs)
                Ψ = spline(t, t_knots, Ψ_coefs)
                Ψ = jnp.clip(Ψ, -jnp.pi/3, jnp.pi/3)
                r = jnp.array([x, y, z, Ψ])
                return r

            # Required derivatives of the reference trajectory
            def ref_derivatives(t):
                ref_vel = jax.jacfwd(reference)
                ref_acc = jax.jacfwd(ref_vel)
                r = reference(t)
                dr = ref_vel(t)
                ddr = ref_acc(t)
                return r, dr, ddr

            # Simulation loop
            def loop(carry, input_slice):
                t_prev = carry
                t = input_slice

                r, dr, ddr = ref_derivatives(t)
                carry = (t)
                output_slice = (r, dr, ddr)
                return carry, output_slice

            # Initial conditions
            t0 = ts[0]
            r0, dr0, ddr0 = ref_derivatives(t0)
            
            # Run simulation loop
            carry = (t0)
            carry, output = jax.lax.scan(loop, carry, ts[1:])
            r, dr, ddr = output

            # Prepend initial conditions
            r = jnp.vstack((r0, r))
            dr = jnp.vstack((dr0, dr))
            ddr = jnp.vstack((ddr0, ddr))

            return r, dr, ddr

        # Sample wind velocities from the training distribution
        w_min = 0.  # minimum wind velocity in inertial `x`-direction
        w_max = 6.  # maximum wind velocity in inertial `x`-direction
        a = 5.      # shape parameter `a` for beta distribution
        b = 9.      # shape parameter `b` for beta distribution
        key, subkey = jax.random.split(key, 2)
        w = w_min + (w_max - w_min)*jax.random.beta(subkey, a, b, (num_traj,))

        # Simulate tracking for each `w`
        dt = 0.01
        t = jnp.arange(0, T + dt, dt)  # same times for each trajectory
        # print('t_knots outside: ', t_knots.shape)
        r, dr, ddr = simulate(t, t_knots, coefs)

        all_goals = []
        all_winds = []

        for i in range(num_traj):
            goal_i = []
            for r_i, dr_i, ddr_i in zip(r[i], dr[i], ddr[i]):
                goal_i.append(self.create_goal(r_i, dr_i, ddr_i))
            all_goals.append(goal_i)

            all_winds.append(self.create_wind(w[i]))
        
        print("Finished generating trajectories...")
        
        return all_goals, all_winds

    def create_goal(self, r_i, dr_i, ddr_i):
        goal = Goal()
        goal.header.frame_id = "world"
        goal.p.x   = r_i[0]
        goal.p.y   = r_i[1]
        goal.p.z   = r_i[2]
        goal.v.x   = dr_i[0]
        goal.v.y   = dr_i[1]
        goal.v.z   = dr_i[2]
        goal.a.x = ddr_i[0]
        goal.a.y = ddr_i[1]
        goal.a.z = ddr_i[2]
        goal.power = True

        goal.psi = r_i[3]
        goal.dpsi = dr_i[3]

        # jerk is set to 0
        goal.j.x  = 0
        goal.j.y  = 0
        goal.j.z  = 0
        return goal
        
    def create_wind(self, wind_x):
        wind = Wind()
        wind.w_nominal.x = wind_x
        wind.w_nominal.y = 0
        wind.w_nominal.z = 0
        wind.w_gust.x = 0
        wind.w_gust.y = 0
        wind.w_gust.z = 0

        return wind

    def reset_goal(self):
        # Creating a new goal message should already set this correctly, but just in case
        # Exception: yaw would be 0 instead of current yaw
        self.goal_.p.x, self.goal_.p.y, self.goal_.p.z = 0, 0, 0
        self.goal_.v.x, self.goal_.v.y, self.goal_.v.z = 0, 0, 0
        self.goal_.a.x, self.goal_.a.y, self.goal_.a.z = 0, 0, 0
        self.goal_.j.x, self.goal_.j.y, self.goal_.j.z = 0, 0, 0
        #self.goal_.s.x, self.goal_.s.y, self.goal_.s.z = 0, 0, 0
        self.goal_.psi = quat2yaw(self.pose_.orientation)
        self.goal_.dpsi = 0
        # self.goal_.power = False
        # reset_xy_int and  reset_z_int are not used
        self.goal_.mode_xy = Goal.MODE_POSITION_CONTROL
        self.goal_.mode_z = Goal.MODE_POSITION_CONTROL
    
    def reset_wind(self):
        self.wind_.w_nominal.x, self.wind_.w_nominal.y, self.wind_.w_nominal.z = 0, 0, 0
        self.wind_.w_gust.x, self.wind_.w_gust.y, self.wind_.w_gust.z = 0, 0, 0

def main():
    TrajectoryGenerator()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass
