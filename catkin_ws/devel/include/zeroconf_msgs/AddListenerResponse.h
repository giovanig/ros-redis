// Generated by gencpp from file zeroconf_msgs/AddListenerResponse.msg
// DO NOT EDIT!


#ifndef ZEROCONF_MSGS_MESSAGE_ADDLISTENERRESPONSE_H
#define ZEROCONF_MSGS_MESSAGE_ADDLISTENERRESPONSE_H


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
struct AddListenerResponse_
{
  typedef AddListenerResponse_<ContainerAllocator> Type;

  AddListenerResponse_()
    : result(false)  {
    }
  AddListenerResponse_(const ContainerAllocator& _alloc)
    : result(false)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;




  typedef boost::shared_ptr< ::zeroconf_msgs::AddListenerResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::zeroconf_msgs::AddListenerResponse_<ContainerAllocator> const> ConstPtr;

}; // struct AddListenerResponse_

typedef ::zeroconf_msgs::AddListenerResponse_<std::allocator<void> > AddListenerResponse;

typedef boost::shared_ptr< ::zeroconf_msgs::AddListenerResponse > AddListenerResponsePtr;
typedef boost::shared_ptr< ::zeroconf_msgs::AddListenerResponse const> AddListenerResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::zeroconf_msgs::AddListenerResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::zeroconf_msgs::AddListenerResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace zeroconf_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'zeroconf_msgs': ['/home/giovani/catkin_ws/src/zeroconf_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::zeroconf_msgs::AddListenerResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zeroconf_msgs::AddListenerResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zeroconf_msgs::AddListenerResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zeroconf_msgs::AddListenerResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zeroconf_msgs::AddListenerResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zeroconf_msgs::AddListenerResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::zeroconf_msgs::AddListenerResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eb13ac1f1354ccecb7941ee8fa2192e8";
  }

  static const char* value(const ::zeroconf_msgs::AddListenerResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeb13ac1f1354ccecULL;
  static const uint64_t static_value2 = 0xb7941ee8fa2192e8ULL;
};

template<class ContainerAllocator>
struct DataType< ::zeroconf_msgs::AddListenerResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "zeroconf_msgs/AddListenerResponse";
  }

  static const char* value(const ::zeroconf_msgs::AddListenerResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::zeroconf_msgs::AddListenerResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool result\n\
";
  }

  static const char* value(const ::zeroconf_msgs::AddListenerResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::zeroconf_msgs::AddListenerResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AddListenerResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::zeroconf_msgs::AddListenerResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::zeroconf_msgs::AddListenerResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ZEROCONF_MSGS_MESSAGE_ADDLISTENERRESPONSE_H
