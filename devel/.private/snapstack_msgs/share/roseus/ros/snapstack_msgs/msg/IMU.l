;; Auto-generated. Do not edit!


(when (boundp 'snapstack_msgs::IMU)
  (if (not (find-package "SNAPSTACK_MSGS"))
    (make-package "SNAPSTACK_MSGS"))
  (shadow 'IMU (find-package "SNAPSTACK_MSGS")))
(unless (find-package "SNAPSTACK_MSGS::IMU")
  (make-package "SNAPSTACK_MSGS::IMU"))

(in-package "ROS")
;;//! \htmlinclude IMU.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass snapstack_msgs::IMU
  :super ros::object
  :slots (_header _imu_stamp _gyro _accel _loop_time ))

(defmethod snapstack_msgs::IMU
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:imu_stamp __imu_stamp) (instance ros::time :init))
    ((:gyro __gyro) (instance geometry_msgs::Vector3 :init))
    ((:accel __accel) (instance geometry_msgs::Vector3 :init))
    ((:loop_time __loop_time) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _imu_stamp __imu_stamp)
   (setq _gyro __gyro)
   (setq _accel __accel)
   (setq _loop_time (float __loop_time))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:imu_stamp
   (&optional __imu_stamp)
   (if __imu_stamp (setq _imu_stamp __imu_stamp)) _imu_stamp)
  (:gyro
   (&rest __gyro)
   (if (keywordp (car __gyro))
       (send* _gyro __gyro)
     (progn
       (if __gyro (setq _gyro (car __gyro)))
       _gyro)))
  (:accel
   (&rest __accel)
   (if (keywordp (car __accel))
       (send* _accel __accel)
     (progn
       (if __accel (setq _accel (car __accel)))
       _accel)))
  (:loop_time
   (&optional __loop_time)
   (if __loop_time (setq _loop_time __loop_time)) _loop_time)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; time _imu_stamp
    8
    ;; geometry_msgs/Vector3 _gyro
    (send _gyro :serialization-length)
    ;; geometry_msgs/Vector3 _accel
    (send _accel :serialization-length)
    ;; float64 _loop_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; time _imu_stamp
       (write-long (send _imu_stamp :sec) s) (write-long (send _imu_stamp :nsec) s)
     ;; geometry_msgs/Vector3 _gyro
       (send _gyro :serialize s)
     ;; geometry_msgs/Vector3 _accel
       (send _accel :serialize s)
     ;; float64 _loop_time
       (sys::poke _loop_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; time _imu_stamp
     (send _imu_stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _imu_stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _gyro
     (send _gyro :deserialize buf ptr-) (incf ptr- (send _gyro :serialization-length))
   ;; geometry_msgs/Vector3 _accel
     (send _accel :deserialize buf ptr-) (incf ptr- (send _accel :serialization-length))
   ;; float64 _loop_time
     (setq _loop_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get snapstack_msgs::IMU :md5sum-) "59179daecd2e147a20604025d5dc1381")
(setf (get snapstack_msgs::IMU :datatype-) "snapstack_msgs/IMU")
(setf (get snapstack_msgs::IMU :definition-)
      "Header header
time imu_stamp
geometry_msgs/Vector3 gyro
geometry_msgs/Vector3 accel
float64 loop_time # period at which imu cb runs, in seconds
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :snapstack_msgs/IMU "59179daecd2e147a20604025d5dc1381")


