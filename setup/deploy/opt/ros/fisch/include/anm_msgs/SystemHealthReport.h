// Generated by gencpp from file anm_msgs/SystemHealthReport.msg
// DO NOT EDIT!


#ifndef ANM_MSGS_MESSAGE_SYSTEMHEALTHREPORT_H
#define ANM_MSGS_MESSAGE_SYSTEMHEALTHREPORT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <anm_msgs/DOMReport.h>

namespace anm_msgs
{
template <class ContainerAllocator>
struct SystemHealthReport_
{
  typedef SystemHealthReport_<ContainerAllocator> Type;

  SystemHealthReport_()
    : header()
    , system_summary()  {
    }
  SystemHealthReport_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , system_summary(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::anm_msgs::DOMReport_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::anm_msgs::DOMReport_<ContainerAllocator> >::other >  _system_summary_type;
  _system_summary_type system_summary;




  typedef boost::shared_ptr< ::anm_msgs::SystemHealthReport_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::anm_msgs::SystemHealthReport_<ContainerAllocator> const> ConstPtr;

}; // struct SystemHealthReport_

typedef ::anm_msgs::SystemHealthReport_<std::allocator<void> > SystemHealthReport;

typedef boost::shared_ptr< ::anm_msgs::SystemHealthReport > SystemHealthReportPtr;
typedef boost::shared_ptr< ::anm_msgs::SystemHealthReport const> SystemHealthReportConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::anm_msgs::SystemHealthReport_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::anm_msgs::SystemHealthReport_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace anm_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'anm_msgs': ['/home/wqkhan/catkin_ws/src/renesas-demo/autonomoose/rospackages/autonomoose_core/anm_msgs/msg'], 'dbw_mkz_msgs': ['/home/wqkhan/catkin_ws/deploy/install/opt/ros/fisch/share/dbw_mkz_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::anm_msgs::SystemHealthReport_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::anm_msgs::SystemHealthReport_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::SystemHealthReport_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::SystemHealthReport_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::SystemHealthReport_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::SystemHealthReport_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::anm_msgs::SystemHealthReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "66f9803a57f858802ab4b9cb70114150";
  }

  static const char* value(const ::anm_msgs::SystemHealthReport_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x66f9803a57f85880ULL;
  static const uint64_t static_value2 = 0x2ab4b9cb70114150ULL;
};

template<class ContainerAllocator>
struct DataType< ::anm_msgs::SystemHealthReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "anm_msgs/SystemHealthReport";
  }

  static const char* value(const ::anm_msgs::SystemHealthReport_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::anm_msgs::SystemHealthReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Represents the complete system health as a listing of DOMs of all subsystems.\n\
\n\
Header header\n\
\n\
# Simply a list of all the subsystems and their current DOMs\n\
anm_msgs/DOMReport[] system_summary\n\
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
\n\
================================================================================\n\
MSG: anm_msgs/DOMReport\n\
# The DOMReport is used to inform the supervisory layer of the current DOM\n\
# (Degraded Operation Mode) of a given subsystem.\n\
\n\
Header header\n\
\n\
# Name of the subsystem/module\n\
string subsystem_name\n\
\n\
# Degraded operation mode. 0 = no degradation, 1 = fully degraded or failed\n\
float32 dom\n\
";
  }

  static const char* value(const ::anm_msgs::SystemHealthReport_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::anm_msgs::SystemHealthReport_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.system_summary);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SystemHealthReport_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::anm_msgs::SystemHealthReport_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::anm_msgs::SystemHealthReport_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "system_summary[]" << std::endl;
    for (size_t i = 0; i < v.system_summary.size(); ++i)
    {
      s << indent << "  system_summary[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::anm_msgs::DOMReport_<ContainerAllocator> >::stream(s, indent + "    ", v.system_summary[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ANM_MSGS_MESSAGE_SYSTEMHEALTHREPORT_H
