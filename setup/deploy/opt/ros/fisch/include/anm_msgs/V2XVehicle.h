// Generated by gencpp from file anm_msgs/V2XVehicle.msg
// DO NOT EDIT!


#ifndef ANM_MSGS_MESSAGE_V2XVEHICLE_H
#define ANM_MSGS_MESSAGE_V2XVEHICLE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace anm_msgs
{
template <class ContainerAllocator>
struct V2XVehicle_
{
  typedef V2XVehicle_<ContainerAllocator> Type;

  V2XVehicle_()
    : id(0)
    , position()
    , speed(0.0)
    , yaw(0.0)
    , is_self(false)  {
    }
  V2XVehicle_(const ContainerAllocator& _alloc)
    : id(0)
    , position(_alloc)
    , speed(0.0)
    , yaw(0.0)
    , is_self(false)  {
  (void)_alloc;
    }



   typedef uint32_t _id_type;
  _id_type id;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef double _speed_type;
  _speed_type speed;

   typedef double _yaw_type;
  _yaw_type yaw;

   typedef uint8_t _is_self_type;
  _is_self_type is_self;




  typedef boost::shared_ptr< ::anm_msgs::V2XVehicle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::anm_msgs::V2XVehicle_<ContainerAllocator> const> ConstPtr;

}; // struct V2XVehicle_

typedef ::anm_msgs::V2XVehicle_<std::allocator<void> > V2XVehicle;

typedef boost::shared_ptr< ::anm_msgs::V2XVehicle > V2XVehiclePtr;
typedef boost::shared_ptr< ::anm_msgs::V2XVehicle const> V2XVehicleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::anm_msgs::V2XVehicle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::anm_msgs::V2XVehicle_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace anm_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'dbw_mkz_msgs': ['/home/wqkhan/catkin_ws/deploy/install/opt/ros/fisch/share/dbw_mkz_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'anm_msgs': ['/home/wqkhan/catkin_ws/src/renesas-demo/autonomoose/rospackages/autonomoose_core/anm_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::anm_msgs::V2XVehicle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::anm_msgs::V2XVehicle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::V2XVehicle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::V2XVehicle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::V2XVehicle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::V2XVehicle_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::anm_msgs::V2XVehicle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "37f8e1d7c4cd5cf2bc765b7f1a716323";
  }

  static const char* value(const ::anm_msgs::V2XVehicle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x37f8e1d7c4cd5cf2ULL;
  static const uint64_t static_value2 = 0xbc765b7f1a716323ULL;
};

template<class ContainerAllocator>
struct DataType< ::anm_msgs::V2XVehicle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "anm_msgs/V2XVehicle";
  }

  static const char* value(const ::anm_msgs::V2XVehicle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::anm_msgs::V2XVehicle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Vehicle v2x custom header\n\
#\n\
# id       = ID of vehicle\n\
# position = x y position in odom frame (meters)\n\
# speed    = speed of the vehicle (meters/second)\n\
# yaw      = heading in radians north of east\n\
# self     = if this is the local vehicle, true, otherwise, false\n\
\n\
uint32 id\n\
geometry_msgs/Point position\n\
float64 speed\n\
float64 yaw\n\
bool is_self\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::anm_msgs::V2XVehicle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::anm_msgs::V2XVehicle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.position);
      stream.next(m.speed);
      stream.next(m.yaw);
      stream.next(m.is_self);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct V2XVehicle_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::anm_msgs::V2XVehicle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::anm_msgs::V2XVehicle_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.id);
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "speed: ";
    Printer<double>::stream(s, indent + "  ", v.speed);
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
    s << indent << "is_self: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_self);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ANM_MSGS_MESSAGE_V2XVEHICLE_H