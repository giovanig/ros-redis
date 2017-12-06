// Generated by gencpp from file anm_msgs/V2XStopSignList.msg
// DO NOT EDIT!


#ifndef ANM_MSGS_MESSAGE_V2XSTOPSIGNLIST_H
#define ANM_MSGS_MESSAGE_V2XSTOPSIGNLIST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <anm_msgs/V2XStopSign.h>

namespace anm_msgs
{
template <class ContainerAllocator>
struct V2XStopSignList_
{
  typedef V2XStopSignList_<ContainerAllocator> Type;

  V2XStopSignList_()
    : header()
    , stopsigns()  {
    }
  V2XStopSignList_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , stopsigns(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::anm_msgs::V2XStopSign_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::anm_msgs::V2XStopSign_<ContainerAllocator> >::other >  _stopsigns_type;
  _stopsigns_type stopsigns;




  typedef boost::shared_ptr< ::anm_msgs::V2XStopSignList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::anm_msgs::V2XStopSignList_<ContainerAllocator> const> ConstPtr;

}; // struct V2XStopSignList_

typedef ::anm_msgs::V2XStopSignList_<std::allocator<void> > V2XStopSignList;

typedef boost::shared_ptr< ::anm_msgs::V2XStopSignList > V2XStopSignListPtr;
typedef boost::shared_ptr< ::anm_msgs::V2XStopSignList const> V2XStopSignListConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::anm_msgs::V2XStopSignList_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::anm_msgs::V2XStopSignList_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace anm_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'dbw_mkz_msgs': ['/home/wqkhan/catkin_ws/deploy/install/opt/ros/fisch/share/dbw_mkz_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'anm_msgs': ['/home/wqkhan/catkin_ws/src/renesas-demo/autonomoose/rospackages/autonomoose_core/anm_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::anm_msgs::V2XStopSignList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::anm_msgs::V2XStopSignList_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::V2XStopSignList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::V2XStopSignList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::V2XStopSignList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::V2XStopSignList_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::anm_msgs::V2XStopSignList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0ffc5debd5ad0e18ac34e3976054c283";
  }

  static const char* value(const ::anm_msgs::V2XStopSignList_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0ffc5debd5ad0e18ULL;
  static const uint64_t static_value2 = 0xac34e3976054c283ULL;
};

template<class ContainerAllocator>
struct DataType< ::anm_msgs::V2XStopSignList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "anm_msgs/V2XStopSignList";
  }

  static const char* value(const ::anm_msgs::V2XStopSignList_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::anm_msgs::V2XStopSignList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# List of v2x stop signs\n\
\n\
Header header\n\
V2XStopSign[] stopsigns\n\
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
MSG: anm_msgs/V2XStopSign\n\
# Stop sign custom header\n\
#\n\
# id            = ID of stop sign (for multiple stop signs)\n\
# position      = x y position in odom frame (meters)\n\
# yaw           = heading in radians north of east\n\
# effect_length = length of the \"fence line\" for stop sign (meters)\n\
\n\
uint32 id\n\
geometry_msgs/Point position\n\
float64 yaw\n\
float64 effect_length\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::anm_msgs::V2XStopSignList_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::anm_msgs::V2XStopSignList_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.stopsigns);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct V2XStopSignList_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::anm_msgs::V2XStopSignList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::anm_msgs::V2XStopSignList_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "stopsigns[]" << std::endl;
    for (size_t i = 0; i < v.stopsigns.size(); ++i)
    {
      s << indent << "  stopsigns[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::anm_msgs::V2XStopSign_<ContainerAllocator> >::stream(s, indent + "    ", v.stopsigns[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ANM_MSGS_MESSAGE_V2XSTOPSIGNLIST_H