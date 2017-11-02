// Generated by gencpp from file gateway_msgs/RemoteRule.msg
// DO NOT EDIT!


#ifndef GATEWAY_MSGS_MESSAGE_REMOTERULE_H
#define GATEWAY_MSGS_MESSAGE_REMOTERULE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <gateway_msgs/Rule.h>

namespace gateway_msgs
{
template <class ContainerAllocator>
struct RemoteRule_
{
  typedef RemoteRule_<ContainerAllocator> Type;

  RemoteRule_()
    : gateway()
    , rule()  {
    }
  RemoteRule_(const ContainerAllocator& _alloc)
    : gateway(_alloc)
    , rule(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _gateway_type;
  _gateway_type gateway;

   typedef  ::gateway_msgs::Rule_<ContainerAllocator>  _rule_type;
  _rule_type rule;




  typedef boost::shared_ptr< ::gateway_msgs::RemoteRule_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gateway_msgs::RemoteRule_<ContainerAllocator> const> ConstPtr;

}; // struct RemoteRule_

typedef ::gateway_msgs::RemoteRule_<std::allocator<void> > RemoteRule;

typedef boost::shared_ptr< ::gateway_msgs::RemoteRule > RemoteRulePtr;
typedef boost::shared_ptr< ::gateway_msgs::RemoteRule const> RemoteRuleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gateway_msgs::RemoteRule_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gateway_msgs::RemoteRule_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gateway_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'gateway_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/gateway_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gateway_msgs::RemoteRule_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gateway_msgs::RemoteRule_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gateway_msgs::RemoteRule_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gateway_msgs::RemoteRule_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gateway_msgs::RemoteRule_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gateway_msgs::RemoteRule_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gateway_msgs::RemoteRule_<ContainerAllocator> >
{
  static const char* value()
  {
    return "14f4c5aaf33b32b22c50fd514747f99f";
  }

  static const char* value(const ::gateway_msgs::RemoteRule_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x14f4c5aaf33b32b2ULL;
  static const uint64_t static_value2 = 0x2c50fd514747f99fULL;
};

template<class ContainerAllocator>
struct DataType< ::gateway_msgs::RemoteRule_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gateway_msgs/RemoteRule";
  }

  static const char* value(const ::gateway_msgs::RemoteRule_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gateway_msgs::RemoteRule_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Definition for a flip. It represents either:\n\
#\n\
# 1) an existing flipped connection (from the local gateway)\n\
# 2) a rule that is put on a watchlist\n\
\n\
# The target recipient of the flip\n\
string gateway\n\
\n\
# Connection has the following parameters that need setting\n\
# - name : fully qualified name of the connection (str)\n\
# - type : connection type (str)\n\
#  \n\
# Use one of the types defined in Connection string constants:\n\
#     (publisher, subscriber, service, action_client, action_server)\n\
#\n\
# - node : name of the node it originates from (str)(optional)\n\
#\n\
# Node name is necessary, for instance, if you have multiple subscribers\n\
# publishing to a single topic. Most of the time it is not necessary,\n\
# but in some cases it helps refine the rule. It helps refine the rule.\n\
#\n\
Rule rule\n\
\n\
================================================================================\n\
MSG: gateway_msgs/Rule\n\
# Standard gateway connection rule\n\
\n\
# type of connection (from gateway_msgs.msg.Connection)\n\
string type\n\
\n\
# this is the topic/service name or the action base name (a regex is supported)\n\
string name \n\
\n\
# (optional) an optional node name can be provided. if node name is not provided\n\
# then all nodes are matched (also supports regex)\n\
string node\n\
";
  }

  static const char* value(const ::gateway_msgs::RemoteRule_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gateway_msgs::RemoteRule_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.gateway);
      stream.next(m.rule);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RemoteRule_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gateway_msgs::RemoteRule_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gateway_msgs::RemoteRule_<ContainerAllocator>& v)
  {
    s << indent << "gateway: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.gateway);
    s << indent << "rule: ";
    s << std::endl;
    Printer< ::gateway_msgs::Rule_<ContainerAllocator> >::stream(s, indent + "  ", v.rule);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GATEWAY_MSGS_MESSAGE_REMOTERULE_H
