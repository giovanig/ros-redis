// Generated by gencpp from file gateway_msgs/SetWatcherPeriodRequest.msg
// DO NOT EDIT!


#ifndef GATEWAY_MSGS_MESSAGE_SETWATCHERPERIODREQUEST_H
#define GATEWAY_MSGS_MESSAGE_SETWATCHERPERIODREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace gateway_msgs
{
template <class ContainerAllocator>
struct SetWatcherPeriodRequest_
{
  typedef SetWatcherPeriodRequest_<ContainerAllocator> Type;

  SetWatcherPeriodRequest_()
    : period(0.0)  {
    }
  SetWatcherPeriodRequest_(const ContainerAllocator& _alloc)
    : period(0.0)  {
  (void)_alloc;
    }



   typedef float _period_type;
  _period_type period;




  typedef boost::shared_ptr< ::gateway_msgs::SetWatcherPeriodRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gateway_msgs::SetWatcherPeriodRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetWatcherPeriodRequest_

typedef ::gateway_msgs::SetWatcherPeriodRequest_<std::allocator<void> > SetWatcherPeriodRequest;

typedef boost::shared_ptr< ::gateway_msgs::SetWatcherPeriodRequest > SetWatcherPeriodRequestPtr;
typedef boost::shared_ptr< ::gateway_msgs::SetWatcherPeriodRequest const> SetWatcherPeriodRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gateway_msgs::SetWatcherPeriodRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gateway_msgs::SetWatcherPeriodRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gateway_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'gateway_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/gateway_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gateway_msgs::SetWatcherPeriodRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gateway_msgs::SetWatcherPeriodRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gateway_msgs::SetWatcherPeriodRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gateway_msgs::SetWatcherPeriodRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gateway_msgs::SetWatcherPeriodRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gateway_msgs::SetWatcherPeriodRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gateway_msgs::SetWatcherPeriodRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3bfcf350fbd9f1aad223e564a8c1f0dd";
  }

  static const char* value(const ::gateway_msgs::SetWatcherPeriodRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3bfcf350fbd9f1aaULL;
  static const uint64_t static_value2 = 0xd223e564a8c1f0ddULL;
};

template<class ContainerAllocator>
struct DataType< ::gateway_msgs::SetWatcherPeriodRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gateway_msgs/SetWatcherPeriodRequest";
  }

  static const char* value(const ::gateway_msgs::SetWatcherPeriodRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gateway_msgs::SetWatcherPeriodRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
float32 period\n\
";
  }

  static const char* value(const ::gateway_msgs::SetWatcherPeriodRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gateway_msgs::SetWatcherPeriodRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.period);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetWatcherPeriodRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gateway_msgs::SetWatcherPeriodRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gateway_msgs::SetWatcherPeriodRequest_<ContainerAllocator>& v)
  {
    s << indent << "period: ";
    Printer<float>::stream(s, indent + "  ", v.period);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GATEWAY_MSGS_MESSAGE_SETWATCHERPERIODREQUEST_H
