// Generated by gencpp from file concert_service_msgs/KillTurtlePairResponse.msg
// DO NOT EDIT!


#ifndef CONCERT_SERVICE_MSGS_MESSAGE_KILLTURTLEPAIRRESPONSE_H
#define CONCERT_SERVICE_MSGS_MESSAGE_KILLTURTLEPAIRRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <uuid_msgs/UniqueID.h>
#include <concert_service_msgs/KillTurtleResponse.h>

namespace concert_service_msgs
{
template <class ContainerAllocator>
struct KillTurtlePairResponse_
{
  typedef KillTurtlePairResponse_<ContainerAllocator> Type;

  KillTurtlePairResponse_()
    : id()
    , response()  {
    }
  KillTurtlePairResponse_(const ContainerAllocator& _alloc)
    : id(_alloc)
    , response(_alloc)  {
  (void)_alloc;
    }



   typedef  ::uuid_msgs::UniqueID_<ContainerAllocator>  _id_type;
  _id_type id;

   typedef  ::concert_service_msgs::KillTurtleResponse_<ContainerAllocator>  _response_type;
  _response_type response;




  typedef boost::shared_ptr< ::concert_service_msgs::KillTurtlePairResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::concert_service_msgs::KillTurtlePairResponse_<ContainerAllocator> const> ConstPtr;

}; // struct KillTurtlePairResponse_

typedef ::concert_service_msgs::KillTurtlePairResponse_<std::allocator<void> > KillTurtlePairResponse;

typedef boost::shared_ptr< ::concert_service_msgs::KillTurtlePairResponse > KillTurtlePairResponsePtr;
typedef boost::shared_ptr< ::concert_service_msgs::KillTurtlePairResponse const> KillTurtlePairResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::concert_service_msgs::KillTurtlePairResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::concert_service_msgs::KillTurtlePairResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::concert_service_msgs::KillTurtlePairResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::concert_service_msgs::KillTurtlePairResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::concert_service_msgs::KillTurtlePairResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::concert_service_msgs::KillTurtlePairResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::concert_service_msgs::KillTurtlePairResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::concert_service_msgs::KillTurtlePairResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::concert_service_msgs::KillTurtlePairResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2d12e3db65db9ae3b7de64597c1f0f15";
  }

  static const char* value(const ::concert_service_msgs::KillTurtlePairResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2d12e3db65db9ae3ULL;
  static const uint64_t static_value2 = 0xb7de64597c1f0f15ULL;
};

template<class ContainerAllocator>
struct DataType< ::concert_service_msgs::KillTurtlePairResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "concert_service_msgs/KillTurtlePairResponse";
  }

  static const char* value(const ::concert_service_msgs::KillTurtlePairResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::concert_service_msgs::KillTurtlePairResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM A SERVICE PAIR DEFINITION ======\n\
\n\
uuid_msgs/UniqueID id\n\
KillTurtleResponse response\n\
\n\
================================================================================\n\
MSG: uuid_msgs/UniqueID\n\
# A universally unique identifier (UUID).\n\
#\n\
#  http://en.wikipedia.org/wiki/Universally_unique_identifier\n\
#  http://tools.ietf.org/html/rfc4122.html\n\
\n\
uint8[16] uuid\n\
\n\
================================================================================\n\
MSG: concert_service_msgs/KillTurtleResponse\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM A SERVICE PAIR DEFINITION ======\n\
\n\
\n\
";
  }

  static const char* value(const ::concert_service_msgs::KillTurtlePairResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::concert_service_msgs::KillTurtlePairResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.response);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct KillTurtlePairResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::concert_service_msgs::KillTurtlePairResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::concert_service_msgs::KillTurtlePairResponse_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    s << std::endl;
    Printer< ::uuid_msgs::UniqueID_<ContainerAllocator> >::stream(s, indent + "  ", v.id);
    s << indent << "response: ";
    s << std::endl;
    Printer< ::concert_service_msgs::KillTurtleResponse_<ContainerAllocator> >::stream(s, indent + "  ", v.response);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONCERT_SERVICE_MSGS_MESSAGE_KILLTURTLEPAIRRESPONSE_H
