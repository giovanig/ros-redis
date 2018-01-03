// Generated by gencpp from file etrans_msgs/etrans_vehicle.msg
// DO NOT EDIT!


#ifndef ETRANS_MSGS_MESSAGE_ETRANS_VEHICLE_H
#define ETRANS_MSGS_MESSAGE_ETRANS_VEHICLE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace etrans_msgs
{
template <class ContainerAllocator>
struct etrans_vehicle_
{
  typedef etrans_vehicle_<ContainerAllocator> Type;

  etrans_vehicle_()
    : header()
    , ID(0)
    , latitude(0.0)
    , longitude(0.0)
    , speed(0.0)
    , heading(0.0)
    , self(false)  {
    }
  etrans_vehicle_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , ID(0)
    , latitude(0.0)
    , longitude(0.0)
    , speed(0.0)
    , heading(0.0)
    , self(false)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _ID_type;
  _ID_type ID;

   typedef double _latitude_type;
  _latitude_type latitude;

   typedef double _longitude_type;
  _longitude_type longitude;

   typedef double _speed_type;
  _speed_type speed;

   typedef double _heading_type;
  _heading_type heading;

   typedef uint8_t _self_type;
  _self_type self;




  typedef boost::shared_ptr< ::etrans_msgs::etrans_vehicle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::etrans_msgs::etrans_vehicle_<ContainerAllocator> const> ConstPtr;

}; // struct etrans_vehicle_

typedef ::etrans_msgs::etrans_vehicle_<std::allocator<void> > etrans_vehicle;

typedef boost::shared_ptr< ::etrans_msgs::etrans_vehicle > etrans_vehiclePtr;
typedef boost::shared_ptr< ::etrans_msgs::etrans_vehicle const> etrans_vehicleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::etrans_msgs::etrans_vehicle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::etrans_msgs::etrans_vehicle_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace etrans_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'etrans_msgs': ['/home/waleedqk/catkin_ws/src/renesas-demo/drivers/third_party/etrans_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::etrans_msgs::etrans_vehicle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::etrans_msgs::etrans_vehicle_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::etrans_msgs::etrans_vehicle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::etrans_msgs::etrans_vehicle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::etrans_msgs::etrans_vehicle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::etrans_msgs::etrans_vehicle_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::etrans_msgs::etrans_vehicle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7a208cf19d1f621b47af0d986814c4c0";
  }

  static const char* value(const ::etrans_msgs::etrans_vehicle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7a208cf19d1f621bULL;
  static const uint64_t static_value2 = 0x47af0d986814c4c0ULL;
};

template<class ContainerAllocator>
struct DataType< ::etrans_msgs::etrans_vehicle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "etrans_msgs/etrans_vehicle";
  }

  static const char* value(const ::etrans_msgs::etrans_vehicle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::etrans_msgs::etrans_vehicle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n\
uint32 ID\n\
float64 latitude\n\
float64 longitude\n\
float64 speed\n\
float64 heading\n\
bool self\n\
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
";
  }

  static const char* value(const ::etrans_msgs::etrans_vehicle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::etrans_msgs::etrans_vehicle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.ID);
      stream.next(m.latitude);
      stream.next(m.longitude);
      stream.next(m.speed);
      stream.next(m.heading);
      stream.next(m.self);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct etrans_vehicle_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::etrans_msgs::etrans_vehicle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::etrans_msgs::etrans_vehicle_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "ID: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.ID);
    s << indent << "latitude: ";
    Printer<double>::stream(s, indent + "  ", v.latitude);
    s << indent << "longitude: ";
    Printer<double>::stream(s, indent + "  ", v.longitude);
    s << indent << "speed: ";
    Printer<double>::stream(s, indent + "  ", v.speed);
    s << indent << "heading: ";
    Printer<double>::stream(s, indent + "  ", v.heading);
    s << indent << "self: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.self);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ETRANS_MSGS_MESSAGE_ETRANS_VEHICLE_H
