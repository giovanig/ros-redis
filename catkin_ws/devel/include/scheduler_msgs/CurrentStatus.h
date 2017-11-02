// Generated by gencpp from file scheduler_msgs/CurrentStatus.msg
// DO NOT EDIT!


#ifndef SCHEDULER_MSGS_MESSAGE_CURRENTSTATUS_H
#define SCHEDULER_MSGS_MESSAGE_CURRENTSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <uuid_msgs/UniqueID.h>

namespace scheduler_msgs
{
template <class ContainerAllocator>
struct CurrentStatus_
{
  typedef CurrentStatus_<ContainerAllocator> Type;

  CurrentStatus_()
    : uri()
    , status(0)
    , owner()
    , priority(0)
    , rapps()  {
    }
  CurrentStatus_(const ContainerAllocator& _alloc)
    : uri(_alloc)
    , status(0)
    , owner(_alloc)
    , priority(0)
    , rapps(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _uri_type;
  _uri_type uri;

   typedef uint8_t _status_type;
  _status_type status;

   typedef  ::uuid_msgs::UniqueID_<ContainerAllocator>  _owner_type;
  _owner_type owner;

   typedef int16_t _priority_type;
  _priority_type priority;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _rapps_type;
  _rapps_type rapps;


    enum { AVAILABLE = 0u };
     enum { ALLOCATED = 1u };
     enum { MISSING = 2u };
     enum { GONE = 3u };
 

  typedef boost::shared_ptr< ::scheduler_msgs::CurrentStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::scheduler_msgs::CurrentStatus_<ContainerAllocator> const> ConstPtr;

}; // struct CurrentStatus_

typedef ::scheduler_msgs::CurrentStatus_<std::allocator<void> > CurrentStatus;

typedef boost::shared_ptr< ::scheduler_msgs::CurrentStatus > CurrentStatusPtr;
typedef boost::shared_ptr< ::scheduler_msgs::CurrentStatus const> CurrentStatusConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::scheduler_msgs::CurrentStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::scheduler_msgs::CurrentStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace scheduler_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'rocon_std_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg', '/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg'], 'rocon_service_pair_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/rocon_service_pair_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'scheduler_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg'], 'uuid_msgs': ['/opt/ros/kinetic/share/uuid_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::scheduler_msgs::CurrentStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::scheduler_msgs::CurrentStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scheduler_msgs::CurrentStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scheduler_msgs::CurrentStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scheduler_msgs::CurrentStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scheduler_msgs::CurrentStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::scheduler_msgs::CurrentStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6aad8a50fb8e5cf19eb4622c1c4b6467";
  }

  static const char* value(const ::scheduler_msgs::CurrentStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6aad8a50fb8e5cf1ULL;
  static const uint64_t static_value2 = 0x9eb4622c1c4b6467ULL;
};

template<class ContainerAllocator>
struct DataType< ::scheduler_msgs::CurrentStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "scheduler_msgs/CurrentStatus";
  }

  static const char* value(const ::scheduler_msgs::CurrentStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::scheduler_msgs::CurrentStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "### ROCON resource current status.\n\
#\n\
#   A ROCON scheduler uses this message to report the status of each\n\
#   resource it manages.\n\
#\n\
\n\
##############################################################################\n\
# Resource Identification\n\
##############################################################################\n\
\n\
#   A canonical ROCON Uniform Resource Identifier describing this\n\
#   resource, a fully-resolved character string in the form:\n\
#\n\
#      rocon:/platform/name/framework/os\n\
#\n\
string uri\n\
\n\
##############################################################################\n\
# Status\n\
##############################################################################\n\
\n\
uint8 status            # Current status of this resource\n\
\n\
#  Status value labels:\n\
uint8 AVAILABLE   = 0   # Available for use\n\
uint8 ALLOCATED   = 1   # Allocated to some ROCON request\n\
uint8 MISSING     = 2   # Not currently responding\n\
uint8 GONE        = 3   # Has left the concert (cleanly)\n\
\n\
#   The owner is the unique identifier of the Request message to which\n\
#   this resource is currently assigned, or a zero UUID if it is not\n\
#   assigned.  An AVAILABLE resource never has an owner, but a MISSING\n\
#   one might.\n\
uuid_msgs/UniqueID owner\n\
\n\
#   The priority of an ALLOCATED resource is the priority of its\n\
#   owning request.  An AVAILABLE resource never has a non-zero\n\
#   priority, but a MISSING one might.\n\
int16 priority\n\
\n\
#   List of ROCON application names currently available with this\n\
#   resource. The name string is usually a ROS \"package/node\"\n\
#   identifier, unique because ROS package names are unique.  The\n\
#   contents of this list could change over time due to the device's\n\
#   own activities.\n\
string[] rapps\n\
\n\
================================================================================\n\
MSG: uuid_msgs/UniqueID\n\
# A universally unique identifier (UUID).\n\
#\n\
#  http://en.wikipedia.org/wiki/Universally_unique_identifier\n\
#  http://tools.ietf.org/html/rfc4122.html\n\
\n\
uint8[16] uuid\n\
";
  }

  static const char* value(const ::scheduler_msgs::CurrentStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::scheduler_msgs::CurrentStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.uri);
      stream.next(m.status);
      stream.next(m.owner);
      stream.next(m.priority);
      stream.next(m.rapps);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CurrentStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::scheduler_msgs::CurrentStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::scheduler_msgs::CurrentStatus_<ContainerAllocator>& v)
  {
    s << indent << "uri: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.uri);
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
    s << indent << "owner: ";
    s << std::endl;
    Printer< ::uuid_msgs::UniqueID_<ContainerAllocator> >::stream(s, indent + "  ", v.owner);
    s << indent << "priority: ";
    Printer<int16_t>::stream(s, indent + "  ", v.priority);
    s << indent << "rapps[]" << std::endl;
    for (size_t i = 0; i < v.rapps.size(); ++i)
    {
      s << indent << "  rapps[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.rapps[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SCHEDULER_MSGS_MESSAGE_CURRENTSTATUS_H
