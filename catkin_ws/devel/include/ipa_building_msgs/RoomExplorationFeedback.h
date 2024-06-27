// Generated by gencpp from file ipa_building_msgs/RoomExplorationFeedback.msg
// DO NOT EDIT!


#ifndef IPA_BUILDING_MSGS_MESSAGE_ROOMEXPLORATIONFEEDBACK_H
#define IPA_BUILDING_MSGS_MESSAGE_ROOMEXPLORATIONFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ipa_building_msgs
{
template <class ContainerAllocator>
struct RoomExplorationFeedback_
{
  typedef RoomExplorationFeedback_<ContainerAllocator> Type;

  RoomExplorationFeedback_()
    {
    }
  RoomExplorationFeedback_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::ipa_building_msgs::RoomExplorationFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ipa_building_msgs::RoomExplorationFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct RoomExplorationFeedback_

typedef ::ipa_building_msgs::RoomExplorationFeedback_<std::allocator<void> > RoomExplorationFeedback;

typedef boost::shared_ptr< ::ipa_building_msgs::RoomExplorationFeedback > RoomExplorationFeedbackPtr;
typedef boost::shared_ptr< ::ipa_building_msgs::RoomExplorationFeedback const> RoomExplorationFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ipa_building_msgs::RoomExplorationFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ipa_building_msgs::RoomExplorationFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace ipa_building_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ipa_building_msgs::RoomExplorationFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ipa_building_msgs::RoomExplorationFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ipa_building_msgs::RoomExplorationFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ipa_building_msgs::RoomExplorationFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ipa_building_msgs::RoomExplorationFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ipa_building_msgs::RoomExplorationFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ipa_building_msgs::RoomExplorationFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::ipa_building_msgs::RoomExplorationFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::ipa_building_msgs::RoomExplorationFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ipa_building_msgs/RoomExplorationFeedback";
  }

  static const char* value(const ::ipa_building_msgs::RoomExplorationFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ipa_building_msgs::RoomExplorationFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# feedback definition\n"
"\n"
;
  }

  static const char* value(const ::ipa_building_msgs::RoomExplorationFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ipa_building_msgs::RoomExplorationFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RoomExplorationFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ipa_building_msgs::RoomExplorationFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::ipa_building_msgs::RoomExplorationFeedback_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // IPA_BUILDING_MSGS_MESSAGE_ROOMEXPLORATIONFEEDBACK_H