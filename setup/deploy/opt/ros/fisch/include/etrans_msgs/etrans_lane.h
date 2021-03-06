// Generated by gencpp from file etrans_msgs/etrans_lane.msg
// DO NOT EDIT!


#ifndef ETRANS_MSGS_MESSAGE_ETRANS_LANE_H
#define ETRANS_MSGS_MESSAGE_ETRANS_LANE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <etrans_msgs/etrans_latlon.h>

namespace etrans_msgs
{
template <class ContainerAllocator>
struct etrans_lane_
{
  typedef etrans_lane_<ContainerAllocator> Type;

  etrans_lane_()
    : ID(0)
    , centerpoints()  {
    }
  etrans_lane_(const ContainerAllocator& _alloc)
    : ID(0)
    , centerpoints(_alloc)  {
  (void)_alloc;
    }



   typedef uint32_t _ID_type;
  _ID_type ID;

   typedef std::vector< ::etrans_msgs::etrans_latlon_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::etrans_msgs::etrans_latlon_<ContainerAllocator> >::other >  _centerpoints_type;
  _centerpoints_type centerpoints;




  typedef boost::shared_ptr< ::etrans_msgs::etrans_lane_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::etrans_msgs::etrans_lane_<ContainerAllocator> const> ConstPtr;

}; // struct etrans_lane_

typedef ::etrans_msgs::etrans_lane_<std::allocator<void> > etrans_lane;

typedef boost::shared_ptr< ::etrans_msgs::etrans_lane > etrans_lanePtr;
typedef boost::shared_ptr< ::etrans_msgs::etrans_lane const> etrans_laneConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::etrans_msgs::etrans_lane_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::etrans_msgs::etrans_lane_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace etrans_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'etrans_msgs': ['/home/wqkhan/catkin_ws/src/renesas-demo/drivers/third_party/etrans_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::etrans_msgs::etrans_lane_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::etrans_msgs::etrans_lane_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::etrans_msgs::etrans_lane_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::etrans_msgs::etrans_lane_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::etrans_msgs::etrans_lane_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::etrans_msgs::etrans_lane_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::etrans_msgs::etrans_lane_<ContainerAllocator> >
{
  static const char* value()
  {
    return "af8c9fbac78c2f807829637ebfead832";
  }

  static const char* value(const ::etrans_msgs::etrans_lane_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xaf8c9fbac78c2f80ULL;
  static const uint64_t static_value2 = 0x7829637ebfead832ULL;
};

template<class ContainerAllocator>
struct DataType< ::etrans_msgs::etrans_lane_<ContainerAllocator> >
{
  static const char* value()
  {
    return "etrans_msgs/etrans_lane";
  }

  static const char* value(const ::etrans_msgs::etrans_lane_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::etrans_msgs::etrans_lane_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 ID\n\
etrans_msgs/etrans_latlon[] centerpoints\n\
================================================================================\n\
MSG: etrans_msgs/etrans_latlon\n\
float64 latitude\n\
float64 longitude\n\
";
  }

  static const char* value(const ::etrans_msgs::etrans_lane_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::etrans_msgs::etrans_lane_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ID);
      stream.next(m.centerpoints);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct etrans_lane_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::etrans_msgs::etrans_lane_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::etrans_msgs::etrans_lane_<ContainerAllocator>& v)
  {
    s << indent << "ID: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.ID);
    s << indent << "centerpoints[]" << std::endl;
    for (size_t i = 0; i < v.centerpoints.size(); ++i)
    {
      s << indent << "  centerpoints[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::etrans_msgs::etrans_latlon_<ContainerAllocator> >::stream(s, indent + "    ", v.centerpoints[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ETRANS_MSGS_MESSAGE_ETRANS_LANE_H
