// Generated by gencpp from file concert_service_msgs/KillTurtleResponse.msg
// DO NOT EDIT!


#ifndef CONCERT_SERVICE_MSGS_MESSAGE_KILLTURTLERESPONSE_H
#define CONCERT_SERVICE_MSGS_MESSAGE_KILLTURTLERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace concert_service_msgs
{
template <class ContainerAllocator>
struct KillTurtleResponse_
{
  typedef KillTurtleResponse_<ContainerAllocator> Type;

  KillTurtleResponse_()
    {
    }
  KillTurtleResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }






  typedef boost::shared_ptr< ::concert_service_msgs::KillTurtleResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::concert_service_msgs::KillTurtleResponse_<ContainerAllocator> const> ConstPtr;

}; // struct KillTurtleResponse_

typedef ::concert_service_msgs::KillTurtleResponse_<std::allocator<void> > KillTurtleResponse;

typedef boost::shared_ptr< ::concert_service_msgs::KillTurtleResponse > KillTurtleResponsePtr;
typedef boost::shared_ptr< ::concert_service_msgs::KillTurtleResponse const> KillTurtleResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::concert_service_msgs::KillTurtleResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::concert_service_msgs::KillTurtleResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace concert_service_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'rocon_std_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg', '/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'concert_service_msgs': ['/home/giovani/catkin_ws/devel/share/concert_service_msgs/msg'], 'rocon_service_pair_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/rocon_service_pair_msgs/msg'], 'uuid_msgs': ['/opt/ros/kinetic/share/uuid_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::concert_service_msgs::KillTurtleResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::concert_service_msgs::KillTurtleResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::concert_service_msgs::KillTurtleResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::concert_service_msgs::KillTurtleResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::concert_service_msgs::KillTurtleResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::concert_service_msgs::KillTurtleResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::concert_service_msgs::KillTurtleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::concert_service_msgs::KillTurtleResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::concert_service_msgs::KillTurtleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "concert_service_msgs/KillTurtleResponse";
  }

  static const char* value(const ::concert_service_msgs::KillTurtleResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::concert_service_msgs::KillTurtleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM A SERVICE PAIR DEFINITION ======\n\
\n\
\n\
";
  }

  static const char* value(const ::concert_service_msgs::KillTurtleResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::concert_service_msgs::KillTurtleResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct KillTurtleResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::concert_service_msgs::KillTurtleResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::concert_service_msgs::KillTurtleResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // CONCERT_SERVICE_MSGS_MESSAGE_KILLTURTLERESPONSE_H
