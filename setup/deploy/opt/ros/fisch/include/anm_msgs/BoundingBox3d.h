// Generated by gencpp from file anm_msgs/BoundingBox3d.msg
// DO NOT EDIT!


#ifndef ANM_MSGS_MESSAGE_BOUNDINGBOX3D_H
#define ANM_MSGS_MESSAGE_BOUNDINGBOX3D_H


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
struct BoundingBox3d_
{
  typedef BoundingBox3d_<ContainerAllocator> Type;

  BoundingBox3d_()
    : header()
    , total(0)
    , x()
    , y()
    , z()
    , h()
    , w()
    , l()
    , ry()
    , score()
    , labels()  {
    }
  BoundingBox3d_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , total(0)
    , x(_alloc)
    , y(_alloc)
    , z(_alloc)
    , h(_alloc)
    , w(_alloc)
    , l(_alloc)
    , ry(_alloc)
    , score(_alloc)
    , labels(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _total_type;
  _total_type total;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _x_type;
  _x_type x;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _y_type;
  _y_type y;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _z_type;
  _z_type z;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _h_type;
  _h_type h;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _w_type;
  _w_type w;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _l_type;
  _l_type l;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _ry_type;
  _ry_type ry;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _score_type;
  _score_type score;

   typedef std::vector<uint16_t, typename ContainerAllocator::template rebind<uint16_t>::other >  _labels_type;
  _labels_type labels;




  typedef boost::shared_ptr< ::anm_msgs::BoundingBox3d_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::anm_msgs::BoundingBox3d_<ContainerAllocator> const> ConstPtr;

}; // struct BoundingBox3d_

typedef ::anm_msgs::BoundingBox3d_<std::allocator<void> > BoundingBox3d;

typedef boost::shared_ptr< ::anm_msgs::BoundingBox3d > BoundingBox3dPtr;
typedef boost::shared_ptr< ::anm_msgs::BoundingBox3d const> BoundingBox3dConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::anm_msgs::BoundingBox3d_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::anm_msgs::BoundingBox3d_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::anm_msgs::BoundingBox3d_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::anm_msgs::BoundingBox3d_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::BoundingBox3d_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::anm_msgs::BoundingBox3d_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::BoundingBox3d_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::anm_msgs::BoundingBox3d_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::anm_msgs::BoundingBox3d_<ContainerAllocator> >
{
  static const char* value()
  {
    return "036e1565fd608b01ec7d4aa4d4607d3a";
  }

  static const char* value(const ::anm_msgs::BoundingBox3d_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x036e1565fd608b01ULL;
  static const uint64_t static_value2 = 0xec7d4aa4d4607d3aULL;
};

template<class ContainerAllocator>
struct DataType< ::anm_msgs::BoundingBox3d_<ContainerAllocator> >
{
  static const char* value()
  {
    return "anm_msgs/BoundingBox3d";
  }

  static const char* value(const ::anm_msgs::BoundingBox3d_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::anm_msgs::BoundingBox3d_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This messages defines a set of labeled 2d bounding boxes\n\
#\n\
# Bounding box coordinates are encoded using Kitti format, where (x,y,z)\n\
# represents the centroid, ry represents rotation around the y-axis in radians,\n\
# and (h,w,l) represent the height, width, length of the bounding box.\n\
#\n\
# All units but ry are in metres\n\
#\n\
# Note that the ground plane is represented using the x,z axis\n\
\n\
Header header\n\
\n\
uint32 total\n\
\n\
float32[] x\n\
float32[] y\n\
float32[] z\n\
float32[] h\n\
float32[] w\n\
float32[] l\n\
float32[] ry\n\
float32[] score\n\
uint16[] labels\n\
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

  static const char* value(const ::anm_msgs::BoundingBox3d_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::anm_msgs::BoundingBox3d_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.total);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.h);
      stream.next(m.w);
      stream.next(m.l);
      stream.next(m.ry);
      stream.next(m.score);
      stream.next(m.labels);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BoundingBox3d_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::anm_msgs::BoundingBox3d_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::anm_msgs::BoundingBox3d_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "total: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.total);
    s << indent << "x[]" << std::endl;
    for (size_t i = 0; i < v.x.size(); ++i)
    {
      s << indent << "  x[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.x[i]);
    }
    s << indent << "y[]" << std::endl;
    for (size_t i = 0; i < v.y.size(); ++i)
    {
      s << indent << "  y[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.y[i]);
    }
    s << indent << "z[]" << std::endl;
    for (size_t i = 0; i < v.z.size(); ++i)
    {
      s << indent << "  z[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.z[i]);
    }
    s << indent << "h[]" << std::endl;
    for (size_t i = 0; i < v.h.size(); ++i)
    {
      s << indent << "  h[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.h[i]);
    }
    s << indent << "w[]" << std::endl;
    for (size_t i = 0; i < v.w.size(); ++i)
    {
      s << indent << "  w[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.w[i]);
    }
    s << indent << "l[]" << std::endl;
    for (size_t i = 0; i < v.l.size(); ++i)
    {
      s << indent << "  l[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.l[i]);
    }
    s << indent << "ry[]" << std::endl;
    for (size_t i = 0; i < v.ry.size(); ++i)
    {
      s << indent << "  ry[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.ry[i]);
    }
    s << indent << "score[]" << std::endl;
    for (size_t i = 0; i < v.score.size(); ++i)
    {
      s << indent << "  score[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.score[i]);
    }
    s << indent << "labels[]" << std::endl;
    for (size_t i = 0; i < v.labels.size(); ++i)
    {
      s << indent << "  labels[" << i << "]: ";
      Printer<uint16_t>::stream(s, indent + "  ", v.labels[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ANM_MSGS_MESSAGE_BOUNDINGBOX3D_H
