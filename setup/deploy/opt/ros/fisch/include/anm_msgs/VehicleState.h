// Generated by gencpp from file anm_msgs/VehicleState.msg
// DO NOT EDIT!


#ifndef ANM_MSGS_MESSAGE_VEHICLESTATE_H
#define ANM_MSGS_MESSAGE_VEHICLESTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Twist.h>

namespace anm_msgs
{
template <class ContainerAllocator>
struct VehicleState_
{
  typedef VehicleState_<ContainerAllocator> Type;

  VehicleState_()
    : header()
    , child_frame_id()
    , position()
    , orientation()
    , velocity()
    , acceleration()  {
    }
  VehicleState_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , child_frame_id(_alloc)
    , position(_alloc)
    , orientation(_alloc)
    , velocity(_alloc)
    , acceleration(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _child_frame_id_type;
  _child_frame_id_type child_frame_id;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _orientation_type;
  _orientation_type orientation;

   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _velocity_type;
  _velocity_type velocity;

   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _acceleration_type;
  _acceleration_type acceleration;




  typedef boost::shared_ptr< ::anm_msgs::VehicleState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::anm_msgs::VehicleState_<ContainerAllocator> const> ConstPtr;

}; // struct VehicleState_

typedef ::anm_msgs::VehicleState_<std::allocator<void> > VehicleState;

typedef boost::shared_ptr< ::anm_msgs::VehicleState > VehicleStatePtr;
typedef boost::shared_ptr< ::anm_msgs::VehicleState const> VehicleStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::anm_msgs::VehicleState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::anm_msgs::VehicleState_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace anm_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'dbw_mkz_msgs': ['/home/wqkhan/catkin_ws/deploy/install/opt/ros/fisch/share/dbw_mkz_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'anm_msgs': ['/home/wqkhan/catkin_ws/src/renesas-demo/autonomoose/rospackages/autonomoose_core/anm_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::anm_msgs::VehicleState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::anm_msgs::VehicleState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::VehicleState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::VehicleState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::VehicleState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::VehicleState_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::anm_msgs::VehicleState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "83cb7fb9eb0225599d87dab7d1d7aed8";
  }

  static const char* value(const ::anm_msgs::VehicleState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x83cb7fb9eb022559ULL;
  static const uint64_t static_value2 = 0x9d87dab7d1d7aed8ULL;
};

template<class ContainerAllocator>
struct DataType< ::anm_msgs::VehicleState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "anm_msgs/VehicleState";
  }

  static const char* value(const ::anm_msgs::VehicleState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::anm_msgs::VehicleState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message describes the complete vehicle state\n\
# orientation = orientation of the vehicle using euler angles\n\
\n\
Header header\n\
string child_frame_id\n\
\n\
geometry_msgs/Point position # (m)\n\
geometry_msgs/Vector3 orientation # (rad)\n\
geometry_msgs/Twist velocity # (m/s) & (rad/s)\n\
geometry_msgs/Twist acceleration # (m/s^2) & (rad/s^2)\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
================================================================================\n\
MSG: geometry_msgs/Twist\n\
# This expresses velocity in free space broken into its linear and angular parts.\n\
Vector3  linear\n\
Vector3  angular\n\
";
  }

  static const char* value(const ::anm_msgs::VehicleState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::anm_msgs::VehicleState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.child_frame_id);
      stream.next(m.position);
      stream.next(m.orientation);
      stream.next(m.velocity);
      stream.next(m.acceleration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VehicleState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::anm_msgs::VehicleState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::anm_msgs::VehicleState_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "child_frame_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.child_frame_id);
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "orientation: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.orientation);
    s << indent << "velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.velocity);
    s << indent << "acceleration: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.acceleration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ANM_MSGS_MESSAGE_VEHICLESTATE_H
