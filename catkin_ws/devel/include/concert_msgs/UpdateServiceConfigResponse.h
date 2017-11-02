// Generated by gencpp from file concert_msgs/UpdateServiceConfigResponse.msg
// DO NOT EDIT!


#ifndef CONCERT_MSGS_MESSAGE_UPDATESERVICECONFIGRESPONSE_H
#define CONCERT_MSGS_MESSAGE_UPDATESERVICECONFIGRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace concert_msgs
{
template <class ContainerAllocator>
struct UpdateServiceConfigResponse_
{
  typedef UpdateServiceConfigResponse_<ContainerAllocator> Type;

  UpdateServiceConfigResponse_()
    : success(false)
    , error_message()  {
    }
  UpdateServiceConfigResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , error_message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _error_message_type;
  _error_message_type error_message;




  typedef boost::shared_ptr< ::concert_msgs::UpdateServiceConfigResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::concert_msgs::UpdateServiceConfigResponse_<ContainerAllocator> const> ConstPtr;

}; // struct UpdateServiceConfigResponse_

typedef ::concert_msgs::UpdateServiceConfigResponse_<std::allocator<void> > UpdateServiceConfigResponse;

typedef boost::shared_ptr< ::concert_msgs::UpdateServiceConfigResponse > UpdateServiceConfigResponsePtr;
typedef boost::shared_ptr< ::concert_msgs::UpdateServiceConfigResponse const> UpdateServiceConfigResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::concert_msgs::UpdateServiceConfigResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::concert_msgs::UpdateServiceConfigResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::concert_msgs::UpdateServiceConfigResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::concert_msgs::UpdateServiceConfigResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::concert_msgs::UpdateServiceConfigResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::concert_msgs::UpdateServiceConfigResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::concert_msgs::UpdateServiceConfigResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::concert_msgs::UpdateServiceConfigResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::concert_msgs::UpdateServiceConfigResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6fe914479ce03184a758c3f6990c928f";
  }

  static const char* value(const ::concert_msgs::UpdateServiceConfigResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6fe914479ce03184ULL;
  static const uint64_t static_value2 = 0xa758c3f6990c928fULL;
};

template<class ContainerAllocator>
struct DataType< ::concert_msgs::UpdateServiceConfigResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "concert_msgs/UpdateServiceConfigResponse";
  }

  static const char* value(const ::concert_msgs::UpdateServiceConfigResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::concert_msgs::UpdateServiceConfigResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n\
string error_message\n\
";
  }

  static const char* value(const ::concert_msgs::UpdateServiceConfigResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::concert_msgs::UpdateServiceConfigResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.error_message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UpdateServiceConfigResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::concert_msgs::UpdateServiceConfigResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::concert_msgs::UpdateServiceConfigResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "error_message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.error_message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONCERT_MSGS_MESSAGE_UPDATESERVICECONFIGRESPONSE_H
