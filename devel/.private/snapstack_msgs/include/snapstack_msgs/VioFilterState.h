// Generated by gencpp from file snapstack_msgs/VioFilterState.msg
// DO NOT EDIT!


#ifndef SNAPSTACK_MSGS_MESSAGE_VIOFILTERSTATE_H
#define SNAPSTACK_MSGS_MESSAGE_VIOFILTERSTATE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Vector3.h>

namespace snapstack_msgs
{
template <class ContainerAllocator>
struct VioFilterState_
{
  typedef VioFilterState_<ContainerAllocator> Type;

  VioFilterState_()
    : header()
    , pose()
    , twist()
    , bw()
    , ba()
    , extrinsics()
    , accel_meas()
    , N(0)
    , error_cov()  {
    }
  VioFilterState_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , pose(_alloc)
    , twist(_alloc)
    , bw(_alloc)
    , ba(_alloc)
    , extrinsics(_alloc)
    , accel_meas(_alloc)
    , N(0)
    , error_cov(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _twist_type;
  _twist_type twist;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _bw_type;
  _bw_type bw;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _ba_type;
  _ba_type ba;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _extrinsics_type;
  _extrinsics_type extrinsics;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _accel_meas_type;
  _accel_meas_type accel_meas;

   typedef int32_t _N_type;
  _N_type N;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _error_cov_type;
  _error_cov_type error_cov;





  typedef boost::shared_ptr< ::snapstack_msgs::VioFilterState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::snapstack_msgs::VioFilterState_<ContainerAllocator> const> ConstPtr;

}; // struct VioFilterState_

typedef ::snapstack_msgs::VioFilterState_<std::allocator<void> > VioFilterState;

typedef boost::shared_ptr< ::snapstack_msgs::VioFilterState > VioFilterStatePtr;
typedef boost::shared_ptr< ::snapstack_msgs::VioFilterState const> VioFilterStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::snapstack_msgs::VioFilterState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::snapstack_msgs::VioFilterState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::snapstack_msgs::VioFilterState_<ContainerAllocator1> & lhs, const ::snapstack_msgs::VioFilterState_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.pose == rhs.pose &&
    lhs.twist == rhs.twist &&
    lhs.bw == rhs.bw &&
    lhs.ba == rhs.ba &&
    lhs.extrinsics == rhs.extrinsics &&
    lhs.accel_meas == rhs.accel_meas &&
    lhs.N == rhs.N &&
    lhs.error_cov == rhs.error_cov;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::snapstack_msgs::VioFilterState_<ContainerAllocator1> & lhs, const ::snapstack_msgs::VioFilterState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace snapstack_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::snapstack_msgs::VioFilterState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::snapstack_msgs::VioFilterState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::snapstack_msgs::VioFilterState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::snapstack_msgs::VioFilterState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::snapstack_msgs::VioFilterState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::snapstack_msgs::VioFilterState_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::snapstack_msgs::VioFilterState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "081bdc0c4d73ef878229dd1b85815934";
  }

  static const char* value(const ::snapstack_msgs::VioFilterState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x081bdc0c4d73ef87ULL;
  static const uint64_t static_value2 = 0x8229dd1b85815934ULL;
};

template<class ContainerAllocator>
struct DataType< ::snapstack_msgs::VioFilterState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "snapstack_msgs/VioFilterState";
  }

  static const char* value(const ::snapstack_msgs::VioFilterState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::snapstack_msgs::VioFilterState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# VioFilterState.msg\n"
"std_msgs/Header header\n"
"\n"
"geometry_msgs/Pose pose\n"
"geometry_msgs/Twist twist  # includes gyro measurement for rates\n"
"geometry_msgs/Vector3 bw\n"
"geometry_msgs/Vector3 ba\n"
"geometry_msgs/Pose extrinsics  # camera-to-IMU transform\n"
"\n"
"geometry_msgs/Vector3 accel_meas  # (IMU-frame) raw accel measurement\n"
"\n"
"int32 N  # error state dimension\n"
"float32[] error_cov  # NxN error covariance.\n"
"                     # For consistency, leading 21 terms are ordered [pos, vel, Rwb, bw, ba, Rcb, tcb].\n"
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
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
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

  static const char* value(const ::snapstack_msgs::VioFilterState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::snapstack_msgs::VioFilterState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.pose);
      stream.next(m.twist);
      stream.next(m.bw);
      stream.next(m.ba);
      stream.next(m.extrinsics);
      stream.next(m.accel_meas);
      stream.next(m.N);
      stream.next(m.error_cov);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VioFilterState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::snapstack_msgs::VioFilterState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::snapstack_msgs::VioFilterState_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "twist: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.twist);
    s << indent << "bw: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.bw);
    s << indent << "ba: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.ba);
    s << indent << "extrinsics: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.extrinsics);
    s << indent << "accel_meas: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.accel_meas);
    s << indent << "N: ";
    Printer<int32_t>::stream(s, indent + "  ", v.N);
    s << indent << "error_cov[]" << std::endl;
    for (size_t i = 0; i < v.error_cov.size(); ++i)
    {
      s << indent << "  error_cov[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.error_cov[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SNAPSTACK_MSGS_MESSAGE_VIOFILTERSTATE_H
