// Generated by gencpp from file rocon_interaction_msgs/ErrorCodes.msg
// DO NOT EDIT!


#ifndef ROCON_INTERACTION_MSGS_MESSAGE_ERRORCODES_H
#define ROCON_INTERACTION_MSGS_MESSAGE_ERRORCODES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rocon_interaction_msgs
{
template <class ContainerAllocator>
struct ErrorCodes_
{
  typedef ErrorCodes_<ContainerAllocator> Type;

  ErrorCodes_()
    {
    }
  ErrorCodes_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }




    enum { SUCCESS = 0 };
     enum { INTERACTION_UNAVAILABLE = 20 };
     enum { INTERACTION_QUOTA_REACHED = 21 };
     enum { PAIRING_UNAVAILABLE = 30 };
     enum { START_PAIRING_FAILED = 31 };
     enum { ALREADY_PAIRING = 32 };
     enum { REQUIRED_RAPP_IS_NOT_RUNNING = 33 };
     enum { DIFFERENT_RAPP_IS_RUNNING = 34 };
     enum { NOT_PAIRING = 35 };
     enum { STOP_PAIRING_FAILED = 36 };
     enum { REQUIRED_INTERACTION_IS_NOT_AVAILABLE = 37 };
     enum { REQUIRED_INTERACTION_FAILED = 38 };
     static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  MSG_INTERACTION_UNAVAILABLE;
     static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  MSG_PAIRING_UNAVAILABLE;
     static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  MSG_INTERACTION_QUOTA_REACHED;
     static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  MSG_REQUIRED_RAPP_IS_NOT_RUNNING;
     static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  MSG_DIFFERENT_RAPP_IS_RUNNING;
     static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  MSG_START_PAIRING_FAILED;
     static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  MSG_STOP_PAIRING_FAILED;
     static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  MSG_REQUIRED_INTERACTION_IS_NOT_AVAILABLE;
     static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  MSG_REQUIRED_INTERACTION_FAILED;
     static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  MSG_ALREADY_PAIRING;
     static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  MSG_NOT_PAIRING;
 

  typedef boost::shared_ptr< ::rocon_interaction_msgs::ErrorCodes_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rocon_interaction_msgs::ErrorCodes_<ContainerAllocator> const> ConstPtr;

}; // struct ErrorCodes_

typedef ::rocon_interaction_msgs::ErrorCodes_<std::allocator<void> > ErrorCodes;

typedef boost::shared_ptr< ::rocon_interaction_msgs::ErrorCodes > ErrorCodesPtr;
typedef boost::shared_ptr< ::rocon_interaction_msgs::ErrorCodes const> ErrorCodesConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      ErrorCodes_<ContainerAllocator>::MSG_INTERACTION_UNAVAILABLE =
        
          "This interaction is not available for use"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      ErrorCodes_<ContainerAllocator>::MSG_PAIRING_UNAVAILABLE =
        
          "The specified pairing does not exist"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      ErrorCodes_<ContainerAllocator>::MSG_INTERACTION_QUOTA_REACHED =
        
          "More connections of this type not permitted"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      ErrorCodes_<ContainerAllocator>::MSG_REQUIRED_RAPP_IS_NOT_RUNNING =
        
          "No rapp is running and this pairing interaction requires one to be"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      ErrorCodes_<ContainerAllocator>::MSG_DIFFERENT_RAPP_IS_RUNNING =
        
          "A different rapp to that required is already running"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      ErrorCodes_<ContainerAllocator>::MSG_START_PAIRING_FAILED =
        
          "Failed to start the pairing (rapp)"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      ErrorCodes_<ContainerAllocator>::MSG_STOP_PAIRING_FAILED =
        
          "Failed to stop a pairing (rapp)"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      ErrorCodes_<ContainerAllocator>::MSG_REQUIRED_INTERACTION_IS_NOT_AVAILABLE =
        
          "The required interaction is not available"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      ErrorCodes_<ContainerAllocator>::MSG_REQUIRED_INTERACTION_FAILED =
        
          "The required interaction failed to start"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      ErrorCodes_<ContainerAllocator>::MSG_ALREADY_PAIRING =
        
          "Already pairing, cannot start another pairing"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      ErrorCodes_<ContainerAllocator>::MSG_NOT_PAIRING =
        
          "This interaction manager is not managing paired interactions"
        
        ;
   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rocon_interaction_msgs::ErrorCodes_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rocon_interaction_msgs::ErrorCodes_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rocon_interaction_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'rocon_std_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg', '/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg'], 'rocon_service_pair_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/rocon_service_pair_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'rocon_interaction_msgs': ['/home/giovani/catkin_ws/src/rocon_msgs/rocon_interaction_msgs/msg'], 'uuid_msgs': ['/opt/ros/kinetic/share/uuid_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rocon_interaction_msgs::ErrorCodes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rocon_interaction_msgs::ErrorCodes_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rocon_interaction_msgs::ErrorCodes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rocon_interaction_msgs::ErrorCodes_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rocon_interaction_msgs::ErrorCodes_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rocon_interaction_msgs::ErrorCodes_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rocon_interaction_msgs::ErrorCodes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "60cce08cdead9a60f088e024206793f8";
  }

  static const char* value(const ::rocon_interaction_msgs::ErrorCodes_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x60cce08cdead9a60ULL;
  static const uint64_t static_value2 = 0xf088e024206793f8ULL;
};

template<class ContainerAllocator>
struct DataType< ::rocon_interaction_msgs::ErrorCodes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rocon_interaction_msgs/ErrorCodes";
  }

  static const char* value(const ::rocon_interaction_msgs::ErrorCodes_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rocon_interaction_msgs::ErrorCodes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Error types for interactions\n\
\n\
int8 SUCCESS = 0\n\
\n\
# Interaction errors\n\
int8 INTERACTION_UNAVAILABLE = 20    # The requested role-app pair is not available\n\
int8 INTERACTION_QUOTA_REACHED = 21  # Maximum number or role-app connections already reached \n\
\n\
# Pairing errors\n\
int8 PAIRING_UNAVAILABLE          = 30\n\
int8 START_PAIRING_FAILED         = 31\n\
int8 ALREADY_PAIRING              = 32\n\
int8 REQUIRED_RAPP_IS_NOT_RUNNING = 33\n\
int8 DIFFERENT_RAPP_IS_RUNNING    = 34\n\
int8 NOT_PAIRING                  = 35\n\
int8 STOP_PAIRING_FAILED          = 36\n\
int8 REQUIRED_INTERACTION_IS_NOT_AVAILABLE = 37\n\
int8 REQUIRED_INTERACTION_FAILED  = 38\n\
\n\
string MSG_INTERACTION_UNAVAILABLE                  = This interaction is not available for use\n\
string MSG_PAIRING_UNAVAILABLE                      = The specified pairing does not exist\n\
string MSG_INTERACTION_QUOTA_REACHED                = More connections of this type not permitted\n\
string MSG_REQUIRED_RAPP_IS_NOT_RUNNING             = No rapp is running and this pairing interaction requires one to be\n\
string MSG_DIFFERENT_RAPP_IS_RUNNING                = A different rapp to that required is already running\n\
string MSG_START_PAIRING_FAILED                     = Failed to start the pairing (rapp)\n\
string MSG_STOP_PAIRING_FAILED                      = Failed to stop a pairing (rapp)\n\
string MSG_REQUIRED_INTERACTION_IS_NOT_AVAILABLE    = The required interaction is not available\n\
string MSG_REQUIRED_INTERACTION_FAILED              = The required interaction failed to start\n\
string MSG_ALREADY_PAIRING                          = Already pairing, cannot start another pairing\n\
string MSG_NOT_PAIRING                              = This interaction manager is not managing paired interactions\n\
";
  }

  static const char* value(const ::rocon_interaction_msgs::ErrorCodes_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rocon_interaction_msgs::ErrorCodes_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ErrorCodes_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rocon_interaction_msgs::ErrorCodes_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::rocon_interaction_msgs::ErrorCodes_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ROCON_INTERACTION_MSGS_MESSAGE_ERRORCODES_H
