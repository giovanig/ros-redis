// Generated by gencpp from file zeroconf_msgs/ListPublishedServicesResponse.msg
// DO NOT EDIT!


#ifndef ZEROCONF_MSGS_MESSAGE_LISTPUBLISHEDSERVICESRESPONSE_H
#define ZEROCONF_MSGS_MESSAGE_LISTPUBLISHEDSERVICESRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <zeroconf_msgs/PublishedService.h>

namespace zeroconf_msgs
{
template <class ContainerAllocator>
struct ListPublishedServicesResponse_
{
  typedef ListPublishedServicesResponse_<ContainerAllocator> Type;

  ListPublishedServicesResponse_()
    : services()  {
    }
  ListPublishedServicesResponse_(const ContainerAllocator& _alloc)
    : services(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::zeroconf_msgs::PublishedService_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::zeroconf_msgs::PublishedService_<ContainerAllocator> >::other >  _services_type;
  _services_type services;




  typedef boost::shared_ptr< ::zeroconf_msgs::ListPublishedServicesResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::zeroconf_msgs::ListPublishedServicesResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ListPublishedServicesResponse_

typedef ::zeroconf_msgs::ListPublishedServicesResponse_<std::allocator<void> > ListPublishedServicesResponse;

typedef boost::shared_ptr< ::zeroconf_msgs::ListPublishedServicesResponse > ListPublishedServicesResponsePtr;
typedef boost::shared_ptr< ::zeroconf_msgs::ListPublishedServicesResponse const> ListPublishedServicesResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::zeroconf_msgs::ListPublishedServicesResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::zeroconf_msgs::ListPublishedServicesResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace zeroconf_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'zeroconf_msgs': ['/home/giovani/catkin_ws/src/zeroconf_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::zeroconf_msgs::ListPublishedServicesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zeroconf_msgs::ListPublishedServicesResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zeroconf_msgs::ListPublishedServicesResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zeroconf_msgs::ListPublishedServicesResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zeroconf_msgs::ListPublishedServicesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zeroconf_msgs::ListPublishedServicesResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::zeroconf_msgs::ListPublishedServicesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "12aaabf9e3957c5a3d8c742745b6d97d";
  }

  static const char* value(const ::zeroconf_msgs::ListPublishedServicesResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x12aaabf9e3957c5aULL;
  static const uint64_t static_value2 = 0x3d8c742745b6d97dULL;
};

template<class ContainerAllocator>
struct DataType< ::zeroconf_msgs::ListPublishedServicesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "zeroconf_msgs/ListPublishedServicesResponse";
  }

  static const char* value(const ::zeroconf_msgs::ListPublishedServicesResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::zeroconf_msgs::ListPublishedServicesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "zeroconf_msgs/PublishedService[] services\n\
\n\
\n\
================================================================================\n\
MSG: zeroconf_msgs/PublishedService\n\
#\n\
# Provides all the properties required for publishing of a zeroconf service.\n\
\n\
string name\n\
string type\n\
string domain\n\
int32 port\n\
string description\n\
";
  }

  static const char* value(const ::zeroconf_msgs::ListPublishedServicesResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::zeroconf_msgs::ListPublishedServicesResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.services);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ListPublishedServicesResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::zeroconf_msgs::ListPublishedServicesResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::zeroconf_msgs::ListPublishedServicesResponse_<ContainerAllocator>& v)
  {
    s << indent << "services[]" << std::endl;
    for (size_t i = 0; i < v.services.size(); ++i)
    {
      s << indent << "  services[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::zeroconf_msgs::PublishedService_<ContainerAllocator> >::stream(s, indent + "    ", v.services[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ZEROCONF_MSGS_MESSAGE_LISTPUBLISHEDSERVICESRESPONSE_H
