// Generated by gencpp from file anm_msgs/SystemState.msg
// DO NOT EDIT!


#ifndef ANM_MSGS_MESSAGE_SYSTEMSTATE_H
#define ANM_MSGS_MESSAGE_SYSTEMSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace anm_msgs
{
template <class ContainerAllocator>
struct SystemState_
{
  typedef SystemState_<ContainerAllocator> Type;

  SystemState_()
    : header()
    , state(0)
    , envchks(0)
    , syschks(0)
    , navptschks(0)  {
    }
  SystemState_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , state(0)
    , envchks(0)
    , syschks(0)
    , navptschks(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _state_type;
  _state_type state;

   typedef uint8_t _envchks_type;
  _envchks_type envchks;

   typedef uint8_t _syschks_type;
  _syschks_type syschks;

   typedef uint8_t _navptschks_type;
  _navptschks_type navptschks;


    enum { ST_OFF = 0u };
     enum { ST_STANDBY = 1u };
     enum { ST_NOT_READY = 2u };
     enum { ST_PARKED = 3u };
     enum { ST_DRIVE = 4u };
     enum { ST_ENAVIGATION = 5u };
     enum { ST_FINDPARKING = 6u };
     enum { ST_PLATOONING = 7u };
     enum { ST_EPULLOVER = 8u };
     enum { ST_REVERSE_PARK = 9u };
 

  typedef boost::shared_ptr< ::anm_msgs::SystemState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::anm_msgs::SystemState_<ContainerAllocator> const> ConstPtr;

}; // struct SystemState_

typedef ::anm_msgs::SystemState_<std::allocator<void> > SystemState;

typedef boost::shared_ptr< ::anm_msgs::SystemState > SystemStatePtr;
typedef boost::shared_ptr< ::anm_msgs::SystemState const> SystemStateConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::anm_msgs::SystemState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::anm_msgs::SystemState_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace anm_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'anm_msgs': ['/home/wqkhan/catkin_ws/src/renesas-demo/autonomoose/rospackages/autonomoose_core/anm_msgs/msg'], 'dbw_mkz_msgs': ['/home/wqkhan/catkin_ws/deploy/install/opt/ros/fisch/share/dbw_mkz_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::anm_msgs::SystemState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::anm_msgs::SystemState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::SystemState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::SystemState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::SystemState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::SystemState_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::anm_msgs::SystemState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ab7a717a3afecf397cade346b52416bb";
  }

  static const char* value(const ::anm_msgs::SystemState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xab7a717a3afecf39ULL;
  static const uint64_t static_value2 = 0x7cade346b52416bbULL;
};

template<class ContainerAllocator>
struct DataType< ::anm_msgs::SystemState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "anm_msgs/SystemState";
  }

  static const char* value(const ::anm_msgs::SystemState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::anm_msgs::SystemState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message contains the current state of the autonomous system\n\
# Detailed documentation can be found in google drive under the\n\
# architecture/system supervisor folder\n\
\n\
# The following constants are used to define the states\n\
uint8 ST_OFF = 0         # in manual mode - system is off\n\
uint8 ST_STANDBY = 1     # in manual mode - system is ready to go to auto mode\n\
uint8 ST_NOT_READY = 2   # in manual mode - system is not ready to go auto mode\n\
uint8 ST_PARKED = 3      # in auto mode - system is autonomously parked\n\
uint8 ST_DRIVE = 4       # in auto mode - system is autonomously driving\n\
uint8 ST_ENAVIGATION = 5 # in auto mode - system is emergency navigation\n\
uint8 ST_FINDPARKING = 6 # in auto mode - system is finding parking\n\
uint8 ST_PLATOONING  = 7 # in auto mode - system is platooning\n\
uint8 ST_EPULLOVER  = 8  # in auto mode - system is emergency pullover\n\
uint8 ST_REVERSE_PARK = 9  # in auto mode - system is reverse parking\n\
\n\
# Message definition\n\
Header header\n\
uint8 state             # the state of the system\n\
uint8 envchks           # environment ready checks - 0 = fail, 1 = pass\n\
uint8 syschks           # hardware/software ready checks - 0 = fail, 1 = pass\n\
uint8 navptschks        # is there navigation points currently? 0 = no, 1 = yes\n\
\n\
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
";
  }

  static const char* value(const ::anm_msgs::SystemState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::anm_msgs::SystemState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.state);
      stream.next(m.envchks);
      stream.next(m.syschks);
      stream.next(m.navptschks);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SystemState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::anm_msgs::SystemState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::anm_msgs::SystemState_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state);
    s << indent << "envchks: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.envchks);
    s << indent << "syschks: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.syschks);
    s << indent << "navptschks: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.navptschks);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ANM_MSGS_MESSAGE_SYSTEMSTATE_H
