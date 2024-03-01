// Generated by gencpp from file robotnik_msgs/Logger.msg
// DO NOT EDIT!


#ifndef ROBOTNIK_MSGS_MESSAGE_LOGGER_H
#define ROBOTNIK_MSGS_MESSAGE_LOGGER_H


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
struct Logger_
{
  typedef Logger_<ContainerAllocator> Type;

  Logger_()
    : robot_id()
    , date_time()
    , component()
    , tag()
    , log_level()
    , description()  {
    }
  Logger_(const ContainerAllocator& _alloc)
    : robot_id(_alloc)
    , date_time(_alloc)
    , component(_alloc)
    , tag(_alloc)
    , log_level(_alloc)
    , description(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _robot_id_type;
  _robot_id_type robot_id;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _date_time_type;
  _date_time_type date_time;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _component_type;
  _component_type component;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _tag_type;
  _tag_type tag;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _log_level_type;
  _log_level_type log_level;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _description_type;
  _description_type description;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(LOG_LEVEL_INFO)
  #undef LOG_LEVEL_INFO
#endif
#if defined(_WIN32) && defined(LOG_LEVEL_WARNING)
  #undef LOG_LEVEL_WARNING
#endif
#if defined(_WIN32) && defined(LOG_LEVEL_ERROR)
  #undef LOG_LEVEL_ERROR
#endif
#if defined(_WIN32) && defined(LOG_LEVEL_DEBUG)
  #undef LOG_LEVEL_DEBUG
#endif
#if defined(_WIN32) && defined(LOG_LEVEL_USER)
  #undef LOG_LEVEL_USER
#endif


  static const std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> LOG_LEVEL_INFO;
  static const std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> LOG_LEVEL_WARNING;
  static const std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> LOG_LEVEL_ERROR;
  static const std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> LOG_LEVEL_DEBUG;
  static const std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> LOG_LEVEL_USER;

  typedef boost::shared_ptr< ::robotnik_msgs::Logger_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotnik_msgs::Logger_<ContainerAllocator> const> ConstPtr;

}; // struct Logger_

typedef ::robotnik_msgs::Logger_<std::allocator<void> > Logger;

typedef boost::shared_ptr< ::robotnik_msgs::Logger > LoggerPtr;
typedef boost::shared_ptr< ::robotnik_msgs::Logger const> LoggerConstPtr;

// constants requiring out of line definition

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>
      Logger_<ContainerAllocator>::LOG_LEVEL_INFO =
        
          "INFO"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>
      Logger_<ContainerAllocator>::LOG_LEVEL_WARNING =
        
          "WARNING"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>
      Logger_<ContainerAllocator>::LOG_LEVEL_ERROR =
        
          "ERROR"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>
      Logger_<ContainerAllocator>::LOG_LEVEL_DEBUG =
        
          "DEBUG"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>
      Logger_<ContainerAllocator>::LOG_LEVEL_USER =
        
          "USER"
        
        ;
   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotnik_msgs::Logger_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotnik_msgs::Logger_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robotnik_msgs::Logger_<ContainerAllocator1> & lhs, const ::robotnik_msgs::Logger_<ContainerAllocator2> & rhs)
{
  return lhs.robot_id == rhs.robot_id &&
    lhs.date_time == rhs.date_time &&
    lhs.component == rhs.component &&
    lhs.tag == rhs.tag &&
    lhs.log_level == rhs.log_level &&
    lhs.description == rhs.description;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robotnik_msgs::Logger_<ContainerAllocator1> & lhs, const ::robotnik_msgs::Logger_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robotnik_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::Logger_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_msgs::Logger_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::Logger_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_msgs::Logger_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::Logger_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_msgs::Logger_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotnik_msgs::Logger_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fac2a91a3a99e2c3d40f1613229ad8f7";
  }

  static const char* value(const ::robotnik_msgs::Logger_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfac2a91a3a99e2c3ULL;
  static const uint64_t static_value2 = 0xd40f1613229ad8f7ULL;
};

template<class ContainerAllocator>
struct DataType< ::robotnik_msgs::Logger_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotnik_msgs/Logger";
  }

  static const char* value(const ::robotnik_msgs::Logger_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotnik_msgs::Logger_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string LOG_LEVEL_INFO=INFO\n"
"string LOG_LEVEL_WARNING=WARNING\n"
"string LOG_LEVEL_ERROR=ERROR\n"
"string LOG_LEVEL_DEBUG=DEBUG\n"
"string LOG_LEVEL_USER=USER\n"
"string robot_id\n"
"string date_time\n"
"string component\n"
"string tag\n"
"string log_level\n"
"string description\n"
;
  }

  static const char* value(const ::robotnik_msgs::Logger_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotnik_msgs::Logger_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.robot_id);
      stream.next(m.date_time);
      stream.next(m.component);
      stream.next(m.tag);
      stream.next(m.log_level);
      stream.next(m.description);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Logger_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotnik_msgs::Logger_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotnik_msgs::Logger_<ContainerAllocator>& v)
  {
    s << indent << "robot_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.robot_id);
    s << indent << "date_time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.date_time);
    s << indent << "component: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.component);
    s << indent << "tag: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.tag);
    s << indent << "log_level: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.log_level);
    s << indent << "description: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.description);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTNIK_MSGS_MESSAGE_LOGGER_H
