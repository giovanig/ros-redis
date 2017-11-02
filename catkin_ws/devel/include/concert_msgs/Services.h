// Generated by gencpp from file concert_msgs/Services.msg
// DO NOT EDIT!


#ifndef CONCERT_MSGS_MESSAGE_SERVICES_H
#define CONCERT_MSGS_MESSAGE_SERVICES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <concert_msgs/ServiceProfile.h>

namespace concert_msgs
{
template <class ContainerAllocator>
struct Services_
{
  typedef Services_<ContainerAllocator> Type;

  Services_()
    : services()  {
    }
  Services_(const ContainerAllocator& _alloc)
    : services(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::concert_msgs::ServiceProfile_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::concert_msgs::ServiceProfile_<ContainerAllocator> >::other >  _services_type;
  _services_type services;




  typedef boost::shared_ptr< ::concert_msgs::Services_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::concert_msgs::Services_<ContainerAllocator> const> ConstPtr;

}; // struct Services_

typedef ::concert_msgs::Services_<std::allocator<void> > Services;

typedef boost::shared_ptr< ::concert_msgs::Services > ServicesPtr;
typedef boost::shared_ptr< ::concert_msgs::Services const> ServicesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::concert_msgs::Services_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::concert_msgs::Services_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace concert_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'rocon_service_pair_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/rocon_service_pair_msgs/msg'], 'gateway_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/gateway_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'rocon_app_manager_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg'], 'concert_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/concert_msgs/msg'], 'uuid_msgs': ['/opt/ros/kinetic/share/uuid_msgs/cmake/../msg'], 'rocon_std_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg', '/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::concert_msgs::Services_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::concert_msgs::Services_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::concert_msgs::Services_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::concert_msgs::Services_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::concert_msgs::Services_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::concert_msgs::Services_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::concert_msgs::Services_<ContainerAllocator> >
{
  static const char* value()
  {
    return "385406088e57b4886d05051733612cb1";
  }

  static const char* value(const ::concert_msgs::Services_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x385406088e57b488ULL;
  static const uint64_t static_value2 = 0x6d05051733612cb1ULL;
};

template<class ContainerAllocator>
struct DataType< ::concert_msgs::Services_<ContainerAllocator> >
{
  static const char* value()
  {
    return "concert_msgs/Services";
  }

  static const char* value(const ::concert_msgs::Services_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::concert_msgs::Services_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ServiceProfile[] services\n\
\n\
================================================================================\n\
MSG: concert_msgs/ServiceProfile\n\
# Constants - service types\n\
string TYPE_ROSLAUNCH = roslaunch\n\
string TYPE_CUSTOM    = custom\n\
string TYPE_SHADOW    = shadow\n\
\n\
# Pre-configured parameters\n\
string                      resource_name\n\
string                      name\n\
string                      description\n\
string                      author\n\
uint16                      priority\n\
rocon_std_msgs/Icon         icon\n\
string                      launcher_type\n\
string                      launcher\n\
string                      interactions\n\
string                      parameters\n\
rocon_std_msgs/KeyValue[]   parameters_detail\n\
\n\
# Initialised parameters (on startup)\n\
uuid_msgs/UniqueID          uuid\n\
\n\
# Runtime variables\n\
int16                       status\n\
bool                        enabled\n\
\n\
================================================================================\n\
MSG: rocon_std_msgs/Icon\n\
# Used to idenfity the original package/filename resource this icon was/is to be loaded from\n\
# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.\n\
string resource_name\n\
\n\
# Image data format.  \"jpeg\" or \"png\"\n\
string format\n\
\n\
# Image data.\n\
uint8[] data\n\
================================================================================\n\
MSG: rocon_std_msgs/KeyValue\n\
string key\n\
string value\n\
================================================================================\n\
MSG: uuid_msgs/UniqueID\n\
# A universally unique identifier (UUID).\n\
#\n\
#  http://en.wikipedia.org/wiki/Universally_unique_identifier\n\
#  http://tools.ietf.org/html/rfc4122.html\n\
\n\
uint8[16] uuid\n\
";
  }

  static const char* value(const ::concert_msgs::Services_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::concert_msgs::Services_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.services);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Services_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::concert_msgs::Services_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::concert_msgs::Services_<ContainerAllocator>& v)
  {
    s << indent << "services[]" << std::endl;
    for (size_t i = 0; i < v.services.size(); ++i)
    {
      s << indent << "  services[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::concert_msgs::ServiceProfile_<ContainerAllocator> >::stream(s, indent + "    ", v.services[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONCERT_MSGS_MESSAGE_SERVICES_H
