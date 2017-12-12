// Generated by gencpp from file dbw_mkz_msgs/ThrottleInfoReport.msg
// DO NOT EDIT!


#ifndef DBW_MKZ_MSGS_MESSAGE_THROTTLEINFOREPORT_H
#define DBW_MKZ_MSGS_MESSAGE_THROTTLEINFOREPORT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace dbw_mkz_msgs
{
template <class ContainerAllocator>
struct ThrottleInfoReport_
{
  typedef ThrottleInfoReport_<ContainerAllocator> Type;

  ThrottleInfoReport_()
    : header()
    , throttle_pc(0.0)
    , throttle_rate(0.0)
    , engine_rpm(0.0)  {
    }
  ThrottleInfoReport_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , throttle_pc(0.0)
    , throttle_rate(0.0)
    , engine_rpm(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _throttle_pc_type;
  _throttle_pc_type throttle_pc;

   typedef float _throttle_rate_type;
  _throttle_rate_type throttle_rate;

   typedef float _engine_rpm_type;
  _engine_rpm_type engine_rpm;




  typedef boost::shared_ptr< ::dbw_mkz_msgs::ThrottleInfoReport_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dbw_mkz_msgs::ThrottleInfoReport_<ContainerAllocator> const> ConstPtr;

}; // struct ThrottleInfoReport_

typedef ::dbw_mkz_msgs::ThrottleInfoReport_<std::allocator<void> > ThrottleInfoReport;

typedef boost::shared_ptr< ::dbw_mkz_msgs::ThrottleInfoReport > ThrottleInfoReportPtr;
typedef boost::shared_ptr< ::dbw_mkz_msgs::ThrottleInfoReport const> ThrottleInfoReportConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dbw_mkz_msgs::ThrottleInfoReport_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dbw_mkz_msgs::ThrottleInfoReport_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dbw_mkz_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'dbw_mkz_msgs': ['/home/waleedqk/catkin_ws/src/dbw_mkz_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dbw_mkz_msgs::ThrottleInfoReport_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dbw_mkz_msgs::ThrottleInfoReport_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dbw_mkz_msgs::ThrottleInfoReport_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dbw_mkz_msgs::ThrottleInfoReport_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dbw_mkz_msgs::ThrottleInfoReport_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dbw_mkz_msgs::ThrottleInfoReport_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dbw_mkz_msgs::ThrottleInfoReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8255d20d2bbc661ad39074024259c71a";
  }

  static const char* value(const ::dbw_mkz_msgs::ThrottleInfoReport_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8255d20d2bbc661aULL;
  static const uint64_t static_value2 = 0xd39074024259c71aULL;
};

template<class ContainerAllocator>
struct DataType< ::dbw_mkz_msgs::ThrottleInfoReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dbw_mkz_msgs/ThrottleInfoReport";
  }

  static const char* value(const ::dbw_mkz_msgs::ThrottleInfoReport_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dbw_mkz_msgs::ThrottleInfoReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
# Throttle Pedal\n\
float32 throttle_pc   # Throttle pedal percent, range 0 to 1\n\
float32 throttle_rate # Throttle pedal change per second (1/s)\n\
\n\
# Engine\n\
float32 engine_rpm    # Engine Speed (rpm)\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::dbw_mkz_msgs::ThrottleInfoReport_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dbw_mkz_msgs::ThrottleInfoReport_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.throttle_pc);
      stream.next(m.throttle_rate);
      stream.next(m.engine_rpm);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ThrottleInfoReport_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dbw_mkz_msgs::ThrottleInfoReport_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dbw_mkz_msgs::ThrottleInfoReport_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "throttle_pc: ";
    Printer<float>::stream(s, indent + "  ", v.throttle_pc);
    s << indent << "throttle_rate: ";
    Printer<float>::stream(s, indent + "  ", v.throttle_rate);
    s << indent << "engine_rpm: ";
    Printer<float>::stream(s, indent + "  ", v.engine_rpm);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DBW_MKZ_MSGS_MESSAGE_THROTTLEINFOREPORT_H
