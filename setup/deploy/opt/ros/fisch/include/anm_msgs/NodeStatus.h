// Generated by gencpp from file anm_msgs/NodeStatus.msg
// DO NOT EDIT!


#ifndef ANM_MSGS_MESSAGE_NODESTATUS_H
#define ANM_MSGS_MESSAGE_NODESTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace anm_msgs
{
template <class ContainerAllocator>
struct NodeStatus_
{
  typedef NodeStatus_<ContainerAllocator> Type;

  NodeStatus_()
    : header()
    , node_status(0)
    , node_name()  {
    }
  NodeStatus_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , node_status(0)
    , node_name(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _node_status_type;
  _node_status_type node_status;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _node_name_type;
  _node_name_type node_name;


    enum { FAILED = 0u };
     enum { INACTIVE = 1u };
     enum { ACTIVE = 2u };
 

  typedef boost::shared_ptr< ::anm_msgs::NodeStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::anm_msgs::NodeStatus_<ContainerAllocator> const> ConstPtr;

}; // struct NodeStatus_

typedef ::anm_msgs::NodeStatus_<std::allocator<void> > NodeStatus;

typedef boost::shared_ptr< ::anm_msgs::NodeStatus > NodeStatusPtr;
typedef boost::shared_ptr< ::anm_msgs::NodeStatus const> NodeStatusConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::anm_msgs::NodeStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::anm_msgs::NodeStatus_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::anm_msgs::NodeStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::anm_msgs::NodeStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::NodeStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::NodeStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::NodeStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::NodeStatus_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::anm_msgs::NodeStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dec5de5121114fa9908b5fe8fcefd1d3";
  }

  static const char* value(const ::anm_msgs::NodeStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdec5de5121114fa9ULL;
  static const uint64_t static_value2 = 0x908b5fe8fcefd1d3ULL;
};

template<class ContainerAllocator>
struct DataType< ::anm_msgs::NodeStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "anm_msgs/NodeStatus";
  }

  static const char* value(const ::anm_msgs::NodeStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::anm_msgs::NodeStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message contains the reported status/health of the publishing nodelet\n\
#\n\
# The status modes are:\n\
#  * Failed\n\
#  * Inactive\n\
#  * Active\n\
\n\
# The following constants are used to define the status\n\
uint8 FAILED = 0\n\
uint8 INACTIVE = 1\n\
uint8 ACTIVE = 2\n\
\n\
# Message data\n\
Header header\n\
uint8 node_status       # Status of node\n\
string node_name        # Name of reporting node\n\
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

  static const char* value(const ::anm_msgs::NodeStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::anm_msgs::NodeStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.node_status);
      stream.next(m.node_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NodeStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::anm_msgs::NodeStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::anm_msgs::NodeStatus_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "node_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.node_status);
    s << indent << "node_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.node_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ANM_MSGS_MESSAGE_NODESTATUS_H