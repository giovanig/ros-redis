// Generated by gencpp from file zeroconf_msgs/PublishedService.msg
// DO NOT EDIT!


#ifndef ZEROCONF_MSGS_MESSAGE_PUBLISHEDSERVICE_H
#define ZEROCONF_MSGS_MESSAGE_PUBLISHEDSERVICE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace zeroconf_msgs
{
template <class ContainerAllocator>
struct PublishedService_
{
  typedef PublishedService_<ContainerAllocator> Type;

  PublishedService_()
    : name()
    , type()
    , domain()
    , port(0)
    , description()  {
    }
  PublishedService_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , type(_alloc)
    , domain(_alloc)
    , port(0)
    , description(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _type_type;
  _type_type type;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _domain_type;
  _domain_type domain;

   typedef int32_t _port_type;
  _port_type port;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _description_type;
  _description_type description;




  typedef boost::shared_ptr< ::zeroconf_msgs::PublishedService_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::zeroconf_msgs::PublishedService_<ContainerAllocator> const> ConstPtr;

}; // struct PublishedService_

typedef ::zeroconf_msgs::PublishedService_<std::allocator<void> > PublishedService;

typedef boost::shared_ptr< ::zeroconf_msgs::PublishedService > PublishedServicePtr;
typedef boost::shared_ptr< ::zeroconf_msgs::PublishedService const> PublishedServiceConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::zeroconf_msgs::PublishedService_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::zeroconf_msgs::PublishedService_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::zeroconf_msgs::PublishedService_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zeroconf_msgs::PublishedService_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zeroconf_msgs::PublishedService_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zeroconf_msgs::PublishedService_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zeroconf_msgs::PublishedService_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zeroconf_msgs::PublishedService_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::zeroconf_msgs::PublishedService_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a1b00555a59ffeb95091f591a6ba849a";
  }

  static const char* value(const ::zeroconf_msgs::PublishedService_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa1b00555a59ffeb9ULL;
  static const uint64_t static_value2 = 0x5091f591a6ba849aULL;
};

template<class ContainerAllocator>
struct DataType< ::zeroconf_msgs::PublishedService_<ContainerAllocator> >
{
  static const char* value()
  {
    return "zeroconf_msgs/PublishedService";
  }

  static const char* value(const ::zeroconf_msgs::PublishedService_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::zeroconf_msgs::PublishedService_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n\
# Provides all the properties required for publishing of a zeroconf service.\n\
\n\
string name\n\
string type\n\
string domain\n\
int32 port\n\
string description\n\
";
  }

  static const char* value(const ::zeroconf_msgs::PublishedService_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::zeroconf_msgs::PublishedService_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.type);
      stream.next(m.domain);
      stream.next(m.port);
      stream.next(m.description);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PublishedService_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::zeroconf_msgs::PublishedService_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::zeroconf_msgs::PublishedService_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.type);
    s << indent << "domain: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.domain);
    s << indent << "port: ";
    Printer<int32_t>::stream(s, indent + "  ", v.port);
    s << indent << "description: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.description);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ZEROCONF_MSGS_MESSAGE_PUBLISHEDSERVICE_H
