// Generated by gencpp from file snapstack_msgs/Goal.msg
// DO NOT EDIT!


#ifndef SNAPSTACK_MSGS_MESSAGE_GOAL_H
#define SNAPSTACK_MSGS_MESSAGE_GOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>

namespace snapstack_msgs
{
template <class ContainerAllocator>
struct Goal_
{
  typedef Goal_<ContainerAllocator> Type;

  Goal_()
    : header()
    , p()
    , v()
    , a()
    , j()
    , psi(0.0)
    , dpsi(0.0)
    , power(false)
    , mode_xy(0)
    , mode_z(0)  {
    }
  Goal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , p(_alloc)
    , v(_alloc)
    , a(_alloc)
    , j(_alloc)
    , psi(0.0)
    , dpsi(0.0)
    , power(false)
    , mode_xy(0)
    , mode_z(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _p_type;
  _p_type p;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _v_type;
  _v_type v;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _a_type;
  _a_type a;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _j_type;
  _j_type j;

   typedef double _psi_type;
  _psi_type psi;

   typedef double _dpsi_type;
  _dpsi_type dpsi;

   typedef uint8_t _power_type;
  _power_type power;

   typedef uint8_t _mode_xy_type;
  _mode_xy_type mode_xy;

   typedef uint8_t _mode_z_type;
  _mode_z_type mode_z;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(MODE_POSITION_CONTROL)
  #undef MODE_POSITION_CONTROL
#endif
#if defined(_WIN32) && defined(MODE_VELOCITY_CONTROL)
  #undef MODE_VELOCITY_CONTROL
#endif
#if defined(_WIN32) && defined(MODE_ACCELERATION_CONTROL)
  #undef MODE_ACCELERATION_CONTROL
#endif

  enum {
    MODE_POSITION_CONTROL = 0u,
    MODE_VELOCITY_CONTROL = 1u,
    MODE_ACCELERATION_CONTROL = 2u,
  };


  typedef boost::shared_ptr< ::snapstack_msgs::Goal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::snapstack_msgs::Goal_<ContainerAllocator> const> ConstPtr;

}; // struct Goal_

typedef ::snapstack_msgs::Goal_<std::allocator<void> > Goal;

typedef boost::shared_ptr< ::snapstack_msgs::Goal > GoalPtr;
typedef boost::shared_ptr< ::snapstack_msgs::Goal const> GoalConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::snapstack_msgs::Goal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::snapstack_msgs::Goal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::snapstack_msgs::Goal_<ContainerAllocator1> & lhs, const ::snapstack_msgs::Goal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.p == rhs.p &&
    lhs.v == rhs.v &&
    lhs.a == rhs.a &&
    lhs.j == rhs.j &&
    lhs.psi == rhs.psi &&
    lhs.dpsi == rhs.dpsi &&
    lhs.power == rhs.power &&
    lhs.mode_xy == rhs.mode_xy &&
    lhs.mode_z == rhs.mode_z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::snapstack_msgs::Goal_<ContainerAllocator1> & lhs, const ::snapstack_msgs::Goal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace snapstack_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::snapstack_msgs::Goal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::snapstack_msgs::Goal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::snapstack_msgs::Goal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::snapstack_msgs::Goal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::snapstack_msgs::Goal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::snapstack_msgs::Goal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::snapstack_msgs::Goal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b0f60475b1346f247f102ae07228cff4";
  }

  static const char* value(const ::snapstack_msgs::Goal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb0f60475b1346f24ULL;
  static const uint64_t static_value2 = 0x7f102ae07228cff4ULL;
};

template<class ContainerAllocator>
struct DataType< ::snapstack_msgs::Goal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "snapstack_msgs/Goal";
  }

  static const char* value(const ::snapstack_msgs::Goal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::snapstack_msgs::Goal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Use this message to command the outer loop to track\n"
"# a trajectory generated from a high-level trajectory planner.\n"
"\n"
"Header header\n"
"\n"
"# Current time-slice of desired trajectory\n"
"geometry_msgs/Point p # position\n"
"geometry_msgs/Vector3 v # velocity\n"
"geometry_msgs/Vector3 a # acceleration\n"
"geometry_msgs/Vector3 j # jerk\n"
"\n"
"float64 psi # angle as defined in Sec. III of https://arxiv.org/pdf/2103.06372.pdf  \n"
"# In general, it is will not be the rXYZ yaw Euler angle of the UAV (unless the drone is in a hover condition).\n"
"# This is due to the fact that q_psi (see link above) already has some rXYZ yaw on it.\n"
"# See also the paper https://link.springer.com/chapter/10.1007/978-3-030-28619-4_20\n"
"float64 dpsi #d{psi}/dt\n"
"\n"
"bool power # true if motors should be able to spin\n"
"\n"
"# Trajectory tracking mode constants\n"
"uint8 MODE_POSITION_CONTROL     = 0\n"
"uint8 MODE_VELOCITY_CONTROL     = 1\n"
"uint8 MODE_ACCELERATION_CONTROL = 2\n"
"\n"
"# Trajectory tracking mode for x/y and z components.\n"
"# The default is POSITION control, which uses position and velocity error\n"
"# to calculate the control effort. VELOCITY control only uses vel error.\n"
"# ACCELERATION mode does not use tracking error and could be used to provide\n"
"# a control signal computed from something other than the default PID cntrl.\n"
"uint8 mode_xy\n"
"uint8 mode_z\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::snapstack_msgs::Goal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::snapstack_msgs::Goal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.p);
      stream.next(m.v);
      stream.next(m.a);
      stream.next(m.j);
      stream.next(m.psi);
      stream.next(m.dpsi);
      stream.next(m.power);
      stream.next(m.mode_xy);
      stream.next(m.mode_z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Goal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::snapstack_msgs::Goal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::snapstack_msgs::Goal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "p: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.p);
    s << indent << "v: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.v);
    s << indent << "a: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.a);
    s << indent << "j: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.j);
    s << indent << "psi: ";
    Printer<double>::stream(s, indent + "  ", v.psi);
    s << indent << "dpsi: ";
    Printer<double>::stream(s, indent + "  ", v.dpsi);
    s << indent << "power: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.power);
    s << indent << "mode_xy: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mode_xy);
    s << indent << "mode_z: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mode_z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SNAPSTACK_MSGS_MESSAGE_GOAL_H
