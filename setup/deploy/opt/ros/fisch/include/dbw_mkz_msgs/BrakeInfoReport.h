// Generated by gencpp from file dbw_mkz_msgs/BrakeInfoReport.msg
// DO NOT EDIT!


#ifndef DBW_MKZ_MSGS_MESSAGE_BRAKEINFOREPORT_H
#define DBW_MKZ_MSGS_MESSAGE_BRAKEINFOREPORT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <dbw_mkz_msgs/HillStartAssist.h>
#include <dbw_mkz_msgs/ParkingBrake.h>

namespace dbw_mkz_msgs
{
template <class ContainerAllocator>
struct BrakeInfoReport_
{
  typedef BrakeInfoReport_<ContainerAllocator> Type;

  BrakeInfoReport_()
    : header()
    , brake_torque_request(0.0)
    , brake_torque_actual(0.0)
    , wheel_torque_actual(0.0)
    , accel_over_ground(0.0)
    , hsa()
    , abs_active(false)
    , abs_enabled(false)
    , stab_active(false)
    , stab_enabled(false)
    , trac_active(false)
    , trac_enabled(false)
    , parking_brake()
    , stationary(false)  {
    }
  BrakeInfoReport_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , brake_torque_request(0.0)
    , brake_torque_actual(0.0)
    , wheel_torque_actual(0.0)
    , accel_over_ground(0.0)
    , hsa(_alloc)
    , abs_active(false)
    , abs_enabled(false)
    , stab_active(false)
    , stab_enabled(false)
    , trac_active(false)
    , trac_enabled(false)
    , parking_brake(_alloc)
    , stationary(false)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _brake_torque_request_type;
  _brake_torque_request_type brake_torque_request;

   typedef float _brake_torque_actual_type;
  _brake_torque_actual_type brake_torque_actual;

   typedef float _wheel_torque_actual_type;
  _wheel_torque_actual_type wheel_torque_actual;

   typedef float _accel_over_ground_type;
  _accel_over_ground_type accel_over_ground;

   typedef  ::dbw_mkz_msgs::HillStartAssist_<ContainerAllocator>  _hsa_type;
  _hsa_type hsa;

   typedef uint8_t _abs_active_type;
  _abs_active_type abs_active;

   typedef uint8_t _abs_enabled_type;
  _abs_enabled_type abs_enabled;

   typedef uint8_t _stab_active_type;
  _stab_active_type stab_active;

   typedef uint8_t _stab_enabled_type;
  _stab_enabled_type stab_enabled;

   typedef uint8_t _trac_active_type;
  _trac_active_type trac_active;

   typedef uint8_t _trac_enabled_type;
  _trac_enabled_type trac_enabled;

   typedef  ::dbw_mkz_msgs::ParkingBrake_<ContainerAllocator>  _parking_brake_type;
  _parking_brake_type parking_brake;

   typedef uint8_t _stationary_type;
  _stationary_type stationary;




  typedef boost::shared_ptr< ::dbw_mkz_msgs::BrakeInfoReport_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dbw_mkz_msgs::BrakeInfoReport_<ContainerAllocator> const> ConstPtr;

}; // struct BrakeInfoReport_

typedef ::dbw_mkz_msgs::BrakeInfoReport_<std::allocator<void> > BrakeInfoReport;

typedef boost::shared_ptr< ::dbw_mkz_msgs::BrakeInfoReport > BrakeInfoReportPtr;
typedef boost::shared_ptr< ::dbw_mkz_msgs::BrakeInfoReport const> BrakeInfoReportConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dbw_mkz_msgs::BrakeInfoReport_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dbw_mkz_msgs::BrakeInfoReport_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dbw_mkz_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'dbw_mkz_msgs': ['/home/wqkhan/catkin_ws/src/dbw_mkz_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dbw_mkz_msgs::BrakeInfoReport_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dbw_mkz_msgs::BrakeInfoReport_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dbw_mkz_msgs::BrakeInfoReport_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dbw_mkz_msgs::BrakeInfoReport_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dbw_mkz_msgs::BrakeInfoReport_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dbw_mkz_msgs::BrakeInfoReport_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dbw_mkz_msgs::BrakeInfoReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fc88af128b5b3213ea25ab325a9b3bbb";
  }

  static const char* value(const ::dbw_mkz_msgs::BrakeInfoReport_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfc88af128b5b3213ULL;
  static const uint64_t static_value2 = 0xea25ab325a9b3bbbULL;
};

template<class ContainerAllocator>
struct DataType< ::dbw_mkz_msgs::BrakeInfoReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dbw_mkz_msgs/BrakeInfoReport";
  }

  static const char* value(const ::dbw_mkz_msgs::BrakeInfoReport_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dbw_mkz_msgs::BrakeInfoReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
# Wheel torques (Nm)\n\
float32 brake_torque_request\n\
float32 brake_torque_actual\n\
float32 wheel_torque_actual\n\
\n\
# Vehicle Acceleration (m/s^2)\n\
float32 accel_over_ground\n\
\n\
# Hill Start Assist\n\
HillStartAssist hsa\n\
\n\
# Anti-lock Brakes\n\
bool abs_active\n\
bool abs_enabled\n\
\n\
# Stability Control\n\
bool stab_active\n\
bool stab_enabled\n\
\n\
# Traction Control\n\
bool trac_active\n\
bool trac_enabled\n\
\n\
# Parking Brake\n\
ParkingBrake parking_brake\n\
\n\
# Misc\n\
bool stationary\n\
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
MSG: dbw_mkz_msgs/HillStartAssist\n\
uint8 status\n\
uint8 mode\n\
\n\
uint8 STAT_INACTIVE=0\n\
uint8 STAT_FINDING_GRADIENT=1\n\
uint8 STAT_ACTIVE_PRESSED=2\n\
uint8 STAT_ACTIVE_RELEASED=3\n\
uint8 STAT_FAST_RELEASE=4\n\
uint8 STAT_SLOW_RELEASE=5\n\
uint8 STAT_FAILED=6\n\
uint8 STAT_UNDEFINED=7\n\
\n\
uint8 MODE_OFF=0\n\
uint8 MODE_AUTO=1\n\
uint8 MODE_MANUAL=2\n\
uint8 MODE_UNDEFINED=3\n\
\n\
================================================================================\n\
MSG: dbw_mkz_msgs/ParkingBrake\n\
uint8 status\n\
\n\
uint8 OFF=0\n\
uint8 TRANS=1\n\
uint8 ON=2\n\
uint8 FAULT=3\n\
";
  }

  static const char* value(const ::dbw_mkz_msgs::BrakeInfoReport_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dbw_mkz_msgs::BrakeInfoReport_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.brake_torque_request);
      stream.next(m.brake_torque_actual);
      stream.next(m.wheel_torque_actual);
      stream.next(m.accel_over_ground);
      stream.next(m.hsa);
      stream.next(m.abs_active);
      stream.next(m.abs_enabled);
      stream.next(m.stab_active);
      stream.next(m.stab_enabled);
      stream.next(m.trac_active);
      stream.next(m.trac_enabled);
      stream.next(m.parking_brake);
      stream.next(m.stationary);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BrakeInfoReport_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dbw_mkz_msgs::BrakeInfoReport_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dbw_mkz_msgs::BrakeInfoReport_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "brake_torque_request: ";
    Printer<float>::stream(s, indent + "  ", v.brake_torque_request);
    s << indent << "brake_torque_actual: ";
    Printer<float>::stream(s, indent + "  ", v.brake_torque_actual);
    s << indent << "wheel_torque_actual: ";
    Printer<float>::stream(s, indent + "  ", v.wheel_torque_actual);
    s << indent << "accel_over_ground: ";
    Printer<float>::stream(s, indent + "  ", v.accel_over_ground);
    s << indent << "hsa: ";
    s << std::endl;
    Printer< ::dbw_mkz_msgs::HillStartAssist_<ContainerAllocator> >::stream(s, indent + "  ", v.hsa);
    s << indent << "abs_active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.abs_active);
    s << indent << "abs_enabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.abs_enabled);
    s << indent << "stab_active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.stab_active);
    s << indent << "stab_enabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.stab_enabled);
    s << indent << "trac_active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.trac_active);
    s << indent << "trac_enabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.trac_enabled);
    s << indent << "parking_brake: ";
    s << std::endl;
    Printer< ::dbw_mkz_msgs::ParkingBrake_<ContainerAllocator> >::stream(s, indent + "  ", v.parking_brake);
    s << indent << "stationary: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.stationary);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DBW_MKZ_MSGS_MESSAGE_BRAKEINFOREPORT_H
