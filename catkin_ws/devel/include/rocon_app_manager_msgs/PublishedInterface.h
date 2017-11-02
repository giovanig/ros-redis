// Generated by gencpp from file rocon_app_manager_msgs/PublishedInterface.msg
// DO NOT EDIT!


#ifndef ROCON_APP_MANAGER_MSGS_MESSAGE_PUBLISHEDINTERFACE_H
#define ROCON_APP_MANAGER_MSGS_MESSAGE_PUBLISHEDINTERFACE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <rocon_app_manager_msgs/PublicInterface.h>

namespace rocon_app_manager_msgs
{
template <class ContainerAllocator>
struct PublishedInterface_
{
  typedef PublishedInterface_<ContainerAllocator> Type;

  PublishedInterface_()
    : interface()
    , name()  {
    }
  PublishedInterface_(const ContainerAllocator& _alloc)
    : interface(_alloc)
    , name(_alloc)  {
  (void)_alloc;
    }



   typedef  ::rocon_app_manager_msgs::PublicInterface_<ContainerAllocator>  _interface_type;
  _interface_type interface;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;




  typedef boost::shared_ptr< ::rocon_app_manager_msgs::PublishedInterface_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rocon_app_manager_msgs::PublishedInterface_<ContainerAllocator> const> ConstPtr;

}; // struct PublishedInterface_

typedef ::rocon_app_manager_msgs::PublishedInterface_<std::allocator<void> > PublishedInterface;

typedef boost::shared_ptr< ::rocon_app_manager_msgs::PublishedInterface > PublishedInterfacePtr;
typedef boost::shared_ptr< ::rocon_app_manager_msgs::PublishedInterface const> PublishedInterfaceConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rocon_app_manager_msgs::PublishedInterface_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rocon_app_manager_msgs::PublishedInterface_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rocon_app_manager_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'rocon_std_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg', '/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg'], 'rocon_service_pair_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/rocon_service_pair_msgs/msg'], 'rocon_app_manager_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'uuid_msgs': ['/opt/ros/kinetic/share/uuid_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rocon_app_manager_msgs::PublishedInterface_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rocon_app_manager_msgs::PublishedInterface_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rocon_app_manager_msgs::PublishedInterface_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rocon_app_manager_msgs::PublishedInterface_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rocon_app_manager_msgs::PublishedInterface_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rocon_app_manager_msgs::PublishedInterface_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rocon_app_manager_msgs::PublishedInterface_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0441e6f3dfb91bbff9a213da41a7a0d6";
  }

  static const char* value(const ::rocon_app_manager_msgs::PublishedInterface_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0441e6f3dfb91bbfULL;
  static const uint64_t static_value2 = 0xf9a213da41a7a0d6ULL;
};

template<class ContainerAllocator>
struct DataType< ::rocon_app_manager_msgs::PublishedInterface_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rocon_app_manager_msgs/PublishedInterface";
  }

  static const char* value(const ::rocon_app_manager_msgs::PublishedInterface_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rocon_app_manager_msgs::PublishedInterface_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# The runtime, possibly namespaced and remapped public interface.\n\
\n\
PublicInterface interface\n\
\n\
# Final absolute namespaced/remapped name of the topic/service/action xxx\n\
string name\n\
================================================================================\n\
MSG: rocon_app_manager_msgs/PublicInterface\n\
# Represents a public interface of a rapp\n\
\n\
# One of rocon_std_msgs.Connection type string constants ('publisher, 'subscriber', ...)\n\
string connection_type\n\
\n\
# The data type, e.g. std_msgs/Strings\n\
string data_type\n\
\n\
# Name of the topic/service/action xxx.\n\
string name\n\
\n\
";
  }

  static const char* value(const ::rocon_app_manager_msgs::PublishedInterface_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rocon_app_manager_msgs::PublishedInterface_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.interface);
      stream.next(m.name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PublishedInterface_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rocon_app_manager_msgs::PublishedInterface_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rocon_app_manager_msgs::PublishedInterface_<ContainerAllocator>& v)
  {
    s << indent << "interface: ";
    s << std::endl;
    Printer< ::rocon_app_manager_msgs::PublicInterface_<ContainerAllocator> >::stream(s, indent + "  ", v.interface);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROCON_APP_MANAGER_MSGS_MESSAGE_PUBLISHEDINTERFACE_H
