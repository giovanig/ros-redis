// Generated by gencpp from file anm_msgs/V2XTrafficLight.msg
// DO NOT EDIT!


#ifndef ANM_MSGS_MESSAGE_V2XTRAFFICLIGHT_H
#define ANM_MSGS_MESSAGE_V2XTRAFFICLIGHT_H


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
struct V2XTrafficLight_
{
  typedef V2XTrafficLight_<ContainerAllocator> Type;

  V2XTrafficLight_()
    : id(0)
    , position()
    , yaw(0.0)
    , effect_length(0.0)
    , time_to_change(0.0)
    , light_state(0)  {
    }
  V2XTrafficLight_(const ContainerAllocator& _alloc)
    : id(0)
    , position(_alloc)
    , yaw(0.0)
    , effect_length(0.0)
    , time_to_change(0.0)
    , light_state(0)  {
  (void)_alloc;
    }



   typedef uint32_t _id_type;
  _id_type id;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef double _yaw_type;
  _yaw_type yaw;

   typedef double _effect_length_type;
  _effect_length_type effect_length;

   typedef double _time_to_change_type;
  _time_to_change_type time_to_change;

   typedef uint8_t _light_state_type;
  _light_state_type light_state;


    enum { DARK = 0u };
     enum { GREEN = 1u };
     enum { YELLOW = 2u };
     enum { RED = 3u };
     enum { V2X_LIGHT_STATE_KIND_COUNT = 4u };
 

  typedef boost::shared_ptr< ::anm_msgs::V2XTrafficLight_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::anm_msgs::V2XTrafficLight_<ContainerAllocator> const> ConstPtr;

}; // struct V2XTrafficLight_

typedef ::anm_msgs::V2XTrafficLight_<std::allocator<void> > V2XTrafficLight;

typedef boost::shared_ptr< ::anm_msgs::V2XTrafficLight > V2XTrafficLightPtr;
typedef boost::shared_ptr< ::anm_msgs::V2XTrafficLight const> V2XTrafficLightConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::anm_msgs::V2XTrafficLight_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::anm_msgs::V2XTrafficLight_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace anm_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'anm_msgs': ['/home/wqkhan/catkin_ws/src/renesas-demo/autonomoose/rospackages/autonomoose_core/anm_msgs/msg'], 'dbw_mkz_msgs': ['/home/wqkhan/catkin_ws/deploy/install/opt/ros/fisch/share/dbw_mkz_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::anm_msgs::V2XTrafficLight_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::anm_msgs::V2XTrafficLight_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::V2XTrafficLight_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::V2XTrafficLight_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::V2XTrafficLight_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::V2XTrafficLight_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::anm_msgs::V2XTrafficLight_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c63ccb831497f2fd06b1f8852c656d2f";
  }

  static const char* value(const ::anm_msgs::V2XTrafficLight_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc63ccb831497f2fdULL;
  static const uint64_t static_value2 = 0x06b1f8852c656d2fULL;
};

template<class ContainerAllocator>
struct DataType< ::anm_msgs::V2XTrafficLight_<ContainerAllocator> >
{
  static const char* value()
  {
    return "anm_msgs/V2XTrafficLight";
  }

  static const char* value(const ::anm_msgs::V2XTrafficLight_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::anm_msgs::V2XTrafficLight_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Traffic light v2x custom header\n\
#\n\
# id             = ID of traffic light (for traffic lights)\n\
# position       = x y position in odom frame (meters)\n\
# yaw            = heading in radians north of east\n\
# effect_length  = length of the \"fence line\" for traffic light (meters)\n\
# time_to_change = the time left for the light state to  change (seconds)\n\
# light_state    = current state of the light (below has state numbers)\n\
\n\
uint32 id\n\
geometry_msgs/Point position\n\
float64 yaw\n\
float64 effect_length\n\
float64 time_to_change\n\
\n\
uint8 light_state\n\
uint8 DARK = 0\n\
uint8 GREEN = 1\n\
uint8 YELLOW = 2\n\
uint8 RED = 3\n\
uint8 V2X_LIGHT_STATE_KIND_COUNT = 4\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::anm_msgs::V2XTrafficLight_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::anm_msgs::V2XTrafficLight_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.position);
      stream.next(m.yaw);
      stream.next(m.effect_length);
      stream.next(m.time_to_change);
      stream.next(m.light_state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct V2XTrafficLight_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::anm_msgs::V2XTrafficLight_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::anm_msgs::V2XTrafficLight_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.id);
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
    s << indent << "effect_length: ";
    Printer<double>::stream(s, indent + "  ", v.effect_length);
    s << indent << "time_to_change: ";
    Printer<double>::stream(s, indent + "  ", v.time_to_change);
    s << indent << "light_state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.light_state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ANM_MSGS_MESSAGE_V2XTRAFFICLIGHT_H
