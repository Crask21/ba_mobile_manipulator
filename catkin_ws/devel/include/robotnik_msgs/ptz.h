// Generated by gencpp from file robotnik_msgs/ptz.msg
// DO NOT EDIT!


#ifndef ROBOTNIK_MSGS_MESSAGE_PTZ_H
#define ROBOTNIK_MSGS_MESSAGE_PTZ_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robotnik_msgs
{
template <class ContainerAllocator>
struct ptz_
{
  typedef ptz_<ContainerAllocator> Type;

  ptz_()
    : pan(0.0)
    , tilt(0.0)
    , zoom(0.0)
    , relative(false)
    , mode()  {
    }
  ptz_(const ContainerAllocator& _alloc)
    : pan(0.0)
    , tilt(0.0)
    , zoom(0.0)
    , relative(false)
    , mode(_alloc)  {
  (void)_alloc;
    }



   typedef float _pan_type;
  _pan_type pan;

   typedef float _tilt_type;
  _tilt_type tilt;

   typedef float _zoom_type;
  _zoom_type zoom;

   typedef uint8_t _relative_type;
  _relative_type relative;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _mode_type;
  _mode_type mode;





  typedef boost::shared_ptr< ::robotnik_msgs::ptz_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotnik_msgs::ptz_<ContainerAllocator> const> ConstPtr;

}; // struct ptz_

typedef ::robotnik_msgs::ptz_<std::allocator<void> > ptz;

typedef boost::shared_ptr< ::robotnik_msgs::ptz > ptzPtr;
typedef boost::shared_ptr< ::robotnik_msgs::ptz const> ptzConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotnik_msgs::ptz_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotnik_msgs::ptz_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robotnik_msgs::ptz_<ContainerAllocator1> & lhs, const ::robotnik_msgs::ptz_<ContainerAllocator2> & rhs)
{
  return lhs.pan == rhs.pan &&
    lhs.tilt == rhs.tilt &&
    lhs.zoom == rhs.zoom &&
    lhs.relative == rhs.relative &&
    lhs.mode == rhs.mode;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robotnik_msgs::ptz_<ContainerAllocator1> & lhs, const ::robotnik_msgs::ptz_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robotnik_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::ptz_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::ptz_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::ptz_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::ptz_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::ptz_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::ptz_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotnik_msgs::ptz_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bdbbdf55b26c69882a03baf1effe8bc4";
  }

  static const char* value(const ::robotnik_msgs::ptz_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbdbbdf55b26c6988ULL;
  static const uint64_t static_value2 = 0x2a03baf1effe8bc4ULL;
};

template<class ContainerAllocator>
struct DataType< ::robotnik_msgs::ptz_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotnik_msgs/ptz";
  }

  static const char* value(const ::robotnik_msgs::ptz_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotnik_msgs::ptz_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# PAN value\n"
"float32 pan\n"
"# Tilt value\n"
"float32 tilt\n"
"# Zoom value\n"
"float32 zoom\n"
"# Flag for relative  movements\n"
"bool relative\n"
"# Position or speed mode\n"
"string mode\n"
"\n"
;
  }

  static const char* value(const ::robotnik_msgs::ptz_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotnik_msgs::ptz_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pan);
      stream.next(m.tilt);
      stream.next(m.zoom);
      stream.next(m.relative);
      stream.next(m.mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ptz_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotnik_msgs::ptz_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotnik_msgs::ptz_<ContainerAllocator>& v)
  {
    s << indent << "pan: ";
    Printer<float>::stream(s, indent + "  ", v.pan);
    s << indent << "tilt: ";
    Printer<float>::stream(s, indent + "  ", v.tilt);
    s << indent << "zoom: ";
    Printer<float>::stream(s, indent + "  ", v.zoom);
    s << indent << "relative: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.relative);
    s << indent << "mode: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTNIK_MSGS_MESSAGE_PTZ_H
