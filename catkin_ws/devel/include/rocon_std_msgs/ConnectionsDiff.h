// Generated by gencpp from file rocon_std_msgs/ConnectionsDiff.msg
// DO NOT EDIT!


#ifndef ROCON_STD_MSGS_MESSAGE_CONNECTIONSDIFF_H
#define ROCON_STD_MSGS_MESSAGE_CONNECTIONSDIFF_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <rocon_std_msgs/Connection.h>
#include <rocon_std_msgs/Connection.h>

namespace rocon_std_msgs
{
template <class ContainerAllocator>
struct ConnectionsDiff_
{
  typedef ConnectionsDiff_<ContainerAllocator> Type;

  ConnectionsDiff_()
    : added()
    , lost()  {
    }
  ConnectionsDiff_(const ContainerAllocator& _alloc)
    : added(_alloc)
    , lost(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::rocon_std_msgs::Connection_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::rocon_std_msgs::Connection_<ContainerAllocator> >::other >  _added_type;
  _added_type added;

   typedef std::vector< ::rocon_std_msgs::Connection_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::rocon_std_msgs::Connection_<ContainerAllocator> >::other >  _lost_type;
  _lost_type lost;




  typedef boost::shared_ptr< ::rocon_std_msgs::ConnectionsDiff_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rocon_std_msgs::ConnectionsDiff_<ContainerAllocator> const> ConstPtr;

}; // struct ConnectionsDiff_

typedef ::rocon_std_msgs::ConnectionsDiff_<std::allocator<void> > ConnectionsDiff;

typedef boost::shared_ptr< ::rocon_std_msgs::ConnectionsDiff > ConnectionsDiffPtr;
typedef boost::shared_ptr< ::rocon_std_msgs::ConnectionsDiff const> ConnectionsDiffConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rocon_std_msgs::ConnectionsDiff_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rocon_std_msgs::ConnectionsDiff_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rocon_std_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'rocon_std_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg', '/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg'], 'rocon_service_pair_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/rocon_service_pair_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'uuid_msgs': ['/opt/ros/kinetic/share/uuid_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rocon_std_msgs::ConnectionsDiff_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rocon_std_msgs::ConnectionsDiff_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rocon_std_msgs::ConnectionsDiff_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rocon_std_msgs::ConnectionsDiff_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rocon_std_msgs::ConnectionsDiff_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rocon_std_msgs::ConnectionsDiff_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rocon_std_msgs::ConnectionsDiff_<ContainerAllocator> >
{
  static const char* value()
  {
    return "19f9e3bef1153b4bc619ec3d21b94718";
  }

  static const char* value(const ::rocon_std_msgs::ConnectionsDiff_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x19f9e3bef1153b4bULL;
  static const uint64_t static_value2 = 0xc619ec3d21b94718ULL;
};

template<class ContainerAllocator>
struct DataType< ::rocon_std_msgs::ConnectionsDiff_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rocon_std_msgs/ConnectionsDiff";
  }

  static const char* value(const ::rocon_std_msgs::ConnectionsDiff_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rocon_std_msgs::ConnectionsDiff_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Connection[] added\n\
Connection[] lost\n\
================================================================================\n\
MSG: rocon_std_msgs/Connection\n\
# A connection can be 1 of 5 types\n\
string PUBLISHER = publisher\n\
string SUBSCRIBER = subscriber\n\
string SERVICE = service\n\
string ACTION_CLIENT = action_client\n\
string ACTION_SERVER = action_server\n\
string INVALID = invalid\n\
\n\
# type of connection (from string constants above)\n\
string type\n\
\n\
# this is the topic/service name or the action base name\n\
string name \n\
\n\
# the name of the node establishing this connection\n\
string node\n\
\n\
# topic, service or action type, e.g. std_msgs/String\n\
string type_msg\n\
\n\
# topic, service or action extra type info ( uri for service )\n\
string type_info\n\
\n\
# xmlrpc node uri for managing the connection\n\
string xmlrpc_uri\n\
";
  }

  static const char* value(const ::rocon_std_msgs::ConnectionsDiff_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rocon_std_msgs::ConnectionsDiff_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.added);
      stream.next(m.lost);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ConnectionsDiff_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rocon_std_msgs::ConnectionsDiff_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rocon_std_msgs::ConnectionsDiff_<ContainerAllocator>& v)
  {
    s << indent << "added[]" << std::endl;
    for (size_t i = 0; i < v.added.size(); ++i)
    {
      s << indent << "  added[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rocon_std_msgs::Connection_<ContainerAllocator> >::stream(s, indent + "    ", v.added[i]);
    }
    s << indent << "lost[]" << std::endl;
    for (size_t i = 0; i < v.lost.size(); ++i)
    {
      s << indent << "  lost[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rocon_std_msgs::Connection_<ContainerAllocator> >::stream(s, indent + "    ", v.lost[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROCON_STD_MSGS_MESSAGE_CONNECTIONSDIFF_H
