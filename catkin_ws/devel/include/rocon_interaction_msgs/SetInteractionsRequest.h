// Generated by gencpp from file rocon_interaction_msgs/SetInteractionsRequest.msg
// DO NOT EDIT!


#ifndef ROCON_INTERACTION_MSGS_MESSAGE_SETINTERACTIONSREQUEST_H
#define ROCON_INTERACTION_MSGS_MESSAGE_SETINTERACTIONSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <rocon_interaction_msgs/Pairing.h>
#include <rocon_interaction_msgs/Interaction.h>

namespace rocon_interaction_msgs
{
template <class ContainerAllocator>
struct SetInteractionsRequest_
{
  typedef SetInteractionsRequest_<ContainerAllocator> Type;

  SetInteractionsRequest_()
    : pairings()
    , interactions()
    , load(false)  {
    }
  SetInteractionsRequest_(const ContainerAllocator& _alloc)
    : pairings(_alloc)
    , interactions(_alloc)
    , load(false)  {
  (void)_alloc;
    }



   typedef std::vector< ::rocon_interaction_msgs::Pairing_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::rocon_interaction_msgs::Pairing_<ContainerAllocator> >::other >  _pairings_type;
  _pairings_type pairings;

   typedef std::vector< ::rocon_interaction_msgs::Interaction_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::rocon_interaction_msgs::Interaction_<ContainerAllocator> >::other >  _interactions_type;
  _interactions_type interactions;

   typedef uint8_t _load_type;
  _load_type load;




  typedef boost::shared_ptr< ::rocon_interaction_msgs::SetInteractionsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rocon_interaction_msgs::SetInteractionsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetInteractionsRequest_

typedef ::rocon_interaction_msgs::SetInteractionsRequest_<std::allocator<void> > SetInteractionsRequest;

typedef boost::shared_ptr< ::rocon_interaction_msgs::SetInteractionsRequest > SetInteractionsRequestPtr;
typedef boost::shared_ptr< ::rocon_interaction_msgs::SetInteractionsRequest const> SetInteractionsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rocon_interaction_msgs::SetInteractionsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rocon_interaction_msgs::SetInteractionsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rocon_interaction_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'rocon_std_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg', '/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg'], 'rocon_service_pair_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/rocon_service_pair_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'rocon_interaction_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/rocon_interaction_msgs/msg'], 'uuid_msgs': ['/opt/ros/kinetic/share/uuid_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rocon_interaction_msgs::SetInteractionsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rocon_interaction_msgs::SetInteractionsRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rocon_interaction_msgs::SetInteractionsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rocon_interaction_msgs::SetInteractionsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rocon_interaction_msgs::SetInteractionsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rocon_interaction_msgs::SetInteractionsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rocon_interaction_msgs::SetInteractionsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "321e96679a2f8d92ae0b40dedfb7e193";
  }

  static const char* value(const ::rocon_interaction_msgs::SetInteractionsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x321e96679a2f8d92ULL;
  static const uint64_t static_value2 = 0xae0b40dedfb7e193ULL;
};

template<class ContainerAllocator>
struct DataType< ::rocon_interaction_msgs::SetInteractionsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rocon_interaction_msgs/SetInteractionsRequest";
  }

  static const char* value(const ::rocon_interaction_msgs::SetInteractionsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rocon_interaction_msgs::SetInteractionsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
Pairing[] pairings\n\
Interaction[] interactions\n\
\n\
\n\
bool load\n\
\n\
\n\
================================================================================\n\
MSG: rocon_interaction_msgs/Pairing\n\
###############################################################\n\
# Pairing rapp specification\n\
###############################################################\n\
\n\
# Unique name that represents this pairing. Note that you can\n\
# have multiple configurations of a single rapp, so the rapp\n\
# name alone is not enough to uniquely identify the pairing\n\
string name\n\
\n\
# Group to which this pairing belongs\n\
string group\n\
\n\
# ros resource name of the rapp, e.g. rocon_apps/talker\n\
string rapp\n\
\n\
###############################################################\n\
# Customising the rapp launch instance\n\
###############################################################\n\
\n\
# Can load the default rapp description, but sometimes useful to\n\
# override it to provide more human friendly information.\n\
string description\n\
\n\
# Whether or not this rapp should bringup/teardown an interaction\n\
# with the launching of this rapp. If empty, no interaction is\n\
# required, if non-empty, look for the specified interaction.\n\
string requires_interaction\n\
\n\
# Again, can load the default rapp icon, but may want to override it.\n\
rocon_std_msgs/Icon icon\n\
\n\
rocon_std_msgs/Remapping[] remappings\n\
\n\
# Key value pairs representing rapp parameters\n\
rocon_std_msgs/KeyValue[] parameters\n\
\n\
================================================================================\n\
MSG: rocon_std_msgs/Icon\n\
# Used to idenfity the original package/filename resource this icon was/is to be loaded from\n\
# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.\n\
string resource_name\n\
\n\
# Image data format.  \"jpeg\" or \"png\"\n\
string format\n\
\n\
# Image data.\n\
uint8[] data\n\
================================================================================\n\
MSG: rocon_std_msgs/Remapping\n\
# Describes your typical ros remapping\n\
\n\
string remap_from\n\
string remap_to\n\
\n\
================================================================================\n\
MSG: rocon_std_msgs/KeyValue\n\
string key\n\
string value\n\
================================================================================\n\
MSG: rocon_interaction_msgs/Interaction\n\
###############################################################\n\
# Required Specifications\n\
###############################################################\n\
\n\
# User friendly version of the name. Useful to be customised\n\
# differently from the name for either 1) branding, or 2) because\n\
# some names are complicated visually (e.g. android names).\n\
string name\n\
\n\
# This should be the string required to install and execute\n\
# the interaction from a remocon. \n\
# - android app : the intent action name (e.g. com.github.rosjava.android_apps.listener.Listener)\n\
# - web app : the url\n\
# - roslaunch : package resource name (e.g. gopher_meta/minimal.launch)\n\
# - rosrun : package resource name (e.g. gopher_meta/enable_motors)\n\
# - global : just the executable (e.g. rocon_master_info)\n\
string command\n\
\n\
# A rocon uri string denoting the platforms this interaction\n\
# is compatible with\n\
string compatibility\n\
\n\
###############################################################\n\
# Optional Specifications\n\
###############################################################\n\
\n\
# The group this solution has configured the interaction for.\n\
string group\n\
\n\
# Should be a default for the interaction, but sometimes useful to\n\
# override it to provide more human friendly information.\n\
string description\n\
\n\
# Again, should exist a default, but may want to override it.\n\
rocon_std_msgs/Icon icon\n\
\n\
# The namespace that this interaction will be associated\n\
# with. Interfaces from the interaction will be automatically pushed\n\
# into this namespace (for concerts it will be typically\n\
# used by the services to push interfaces into /services/_service_name_).\n\
# It is up to the user to make sure this is unique to avoid\n\
# potential conflicts.\n\
string namespace\n\
\n\
# Any remappings that need to be applied\n\
rocon_std_msgs/Remapping[] remappings\n\
\n\
# Yaml string representing parameters for the interaction\n\
string parameters\n\
\n\
# Maximum number of permitted connections (-1 = any)\n\
int32 UNLIMITED_INTERACTIONS = -1\n\
int32 max\n\
\n\
# If it should be paired with launch configurations via rapps\n\
bool bringup_pairing\n\
bool teardown_pairing\n\
string[] required_pairings\n\
\n\
# whether it should be a hidden icon in a remocon\n\
bool hidden\n\
\n\
###############################################################\n\
# Parameters finalised by the interactions manager\n\
###############################################################\n\
\n\
# This is a crc32 hash code for the name-group-command\n\
# triple that uniquely identifies this interaction.\n\
# crc32 gets a few collisions, so we should be careful of that.\n\
# It is used by the nfc android auto-launching program so we can\n\
# compactify the request in the url sent by the nfc to the autolauncher.\n\
int32 hash\n\
\n\
";
  }

  static const char* value(const ::rocon_interaction_msgs::SetInteractionsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rocon_interaction_msgs::SetInteractionsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pairings);
      stream.next(m.interactions);
      stream.next(m.load);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetInteractionsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rocon_interaction_msgs::SetInteractionsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rocon_interaction_msgs::SetInteractionsRequest_<ContainerAllocator>& v)
  {
    s << indent << "pairings[]" << std::endl;
    for (size_t i = 0; i < v.pairings.size(); ++i)
    {
      s << indent << "  pairings[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rocon_interaction_msgs::Pairing_<ContainerAllocator> >::stream(s, indent + "    ", v.pairings[i]);
    }
    s << indent << "interactions[]" << std::endl;
    for (size_t i = 0; i < v.interactions.size(); ++i)
    {
      s << indent << "  interactions[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rocon_interaction_msgs::Interaction_<ContainerAllocator> >::stream(s, indent + "    ", v.interactions[i]);
    }
    s << indent << "load: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.load);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROCON_INTERACTION_MSGS_MESSAGE_SETINTERACTIONSREQUEST_H
