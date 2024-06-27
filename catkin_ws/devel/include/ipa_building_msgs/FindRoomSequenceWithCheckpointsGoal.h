// Generated by gencpp from file ipa_building_msgs/FindRoomSequenceWithCheckpointsGoal.msg
// DO NOT EDIT!


#ifndef IPA_BUILDING_MSGS_MESSAGE_FINDROOMSEQUENCEWITHCHECKPOINTSGOAL_H
#define IPA_BUILDING_MSGS_MESSAGE_FINDROOMSEQUENCEWITHCHECKPOINTSGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/Image.h>
#include <geometry_msgs/Pose.h>
#include <ipa_building_msgs/RoomInformation.h>
#include <geometry_msgs/Pose.h>

namespace ipa_building_msgs
{
template <class ContainerAllocator>
struct FindRoomSequenceWithCheckpointsGoal_
{
  typedef FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator> Type;

  FindRoomSequenceWithCheckpointsGoal_()
    : input_map()
    , map_resolution(0.0)
    , map_origin()
    , room_information_in_pixel()
    , robot_radius(0.0)
    , robot_start_coordinate()  {
    }
  FindRoomSequenceWithCheckpointsGoal_(const ContainerAllocator& _alloc)
    : input_map(_alloc)
    , map_resolution(0.0)
    , map_origin(_alloc)
    , room_information_in_pixel(_alloc)
    , robot_radius(0.0)
    , robot_start_coordinate(_alloc)  {
  (void)_alloc;
    }



   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _input_map_type;
  _input_map_type input_map;

   typedef float _map_resolution_type;
  _map_resolution_type map_resolution;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _map_origin_type;
  _map_origin_type map_origin;

   typedef std::vector< ::ipa_building_msgs::RoomInformation_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ipa_building_msgs::RoomInformation_<ContainerAllocator> >::other >  _room_information_in_pixel_type;
  _room_information_in_pixel_type room_information_in_pixel;

   typedef double _robot_radius_type;
  _robot_radius_type robot_radius;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _robot_start_coordinate_type;
  _robot_start_coordinate_type robot_start_coordinate;





  typedef boost::shared_ptr< ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator> const> ConstPtr;

}; // struct FindRoomSequenceWithCheckpointsGoal_

typedef ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<std::allocator<void> > FindRoomSequenceWithCheckpointsGoal;

typedef boost::shared_ptr< ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal > FindRoomSequenceWithCheckpointsGoalPtr;
typedef boost::shared_ptr< ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal const> FindRoomSequenceWithCheckpointsGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator1> & lhs, const ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator2> & rhs)
{
  return lhs.input_map == rhs.input_map &&
    lhs.map_resolution == rhs.map_resolution &&
    lhs.map_origin == rhs.map_origin &&
    lhs.room_information_in_pixel == rhs.room_information_in_pixel &&
    lhs.robot_radius == rhs.robot_radius &&
    lhs.robot_start_coordinate == rhs.robot_start_coordinate;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator1> & lhs, const ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ipa_building_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "285d49405549631f016ce37520e05929";
  }

  static const char* value(const ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x285d49405549631fULL;
  static const uint64_t static_value2 = 0x016ce37520e05929ULL;
};

template<class ContainerAllocator>
struct DataType< ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ipa_building_msgs/FindRoomSequenceWithCheckpointsGoal";
  }

  static const char* value(const ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# goal definition\n"
"sensor_msgs/Image input_map 				# floor plan map [mono8 format], 0=obstacle or unknown, 255=free space \n"
"float32 map_resolution						# the resolution of the map in [meter/cell]\n"
"geometry_msgs/Pose map_origin				# the origin of the map in [meter]\n"
"ipa_building_msgs/RoomInformation[] room_information_in_pixel		# room data (min/max coordinates, center coordinates) measured in pixels\n"
"float64 robot_radius						# the robot footprint radius [m], used for excluding areas from path planning that could not be visited by the robot\n"
"geometry_msgs/Pose robot_start_coordinate	# current robot location (used to determine the closest checkpoint in the sequence of checkpoints) [in meter]\n"
"\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/Image\n"
"# This message contains an uncompressed image\n"
"# (0, 0) is at top-left corner of image\n"
"#\n"
"\n"
"Header header        # Header timestamp should be acquisition time of image\n"
"                     # Header frame_id should be optical frame of camera\n"
"                     # origin of frame should be optical center of camera\n"
"                     # +x should point to the right in the image\n"
"                     # +y should point down in the image\n"
"                     # +z should point into to plane of the image\n"
"                     # If the frame_id here and the frame_id of the CameraInfo\n"
"                     # message associated with the image conflict\n"
"                     # the behavior is undefined\n"
"\n"
"uint32 height         # image height, that is, number of rows\n"
"uint32 width          # image width, that is, number of columns\n"
"\n"
"# The legal values for encoding are in file src/image_encodings.cpp\n"
"# If you want to standardize a new string format, join\n"
"# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n"
"\n"
"string encoding       # Encoding of pixels -- channel meaning, ordering, size\n"
"                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n"
"\n"
"uint8 is_bigendian    # is this data bigendian?\n"
"uint32 step           # Full row length in bytes\n"
"uint8[] data          # actual matrix data, size is (step * rows)\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: ipa_building_msgs/RoomInformation\n"
"geometry_msgs/Polygon room_min_max		# first point provides the minimum (x,y)-coordinate values of the rooms, second point provides the maximum (x,y)-coordinate values of the rooms\n"
"geometry_msgs/Point32 room_center		# provides the (x,y)-coordinate values of the room centers\n"
"================================================================================\n"
"MSG: geometry_msgs/Polygon\n"
"#A specification of a polygon where the first and last points are assumed to be connected\n"
"Point32[] points\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point32\n"
"# This contains the position of a point in free space(with 32 bits of precision).\n"
"# It is recommeded to use Point wherever possible instead of Point32.  \n"
"# \n"
"# This recommendation is to promote interoperability.  \n"
"#\n"
"# This message is designed to take up less space when sending\n"
"# lots of points at once, as in the case of a PointCloud.  \n"
"\n"
"float32 x\n"
"float32 y\n"
"float32 z\n"
;
  }

  static const char* value(const ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.input_map);
      stream.next(m.map_resolution);
      stream.next(m.map_origin);
      stream.next(m.room_information_in_pixel);
      stream.next(m.robot_radius);
      stream.next(m.robot_start_coordinate);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FindRoomSequenceWithCheckpointsGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ipa_building_msgs::FindRoomSequenceWithCheckpointsGoal_<ContainerAllocator>& v)
  {
    s << indent << "input_map: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.input_map);
    s << indent << "map_resolution: ";
    Printer<float>::stream(s, indent + "  ", v.map_resolution);
    s << indent << "map_origin: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.map_origin);
    s << indent << "room_information_in_pixel[]" << std::endl;
    for (size_t i = 0; i < v.room_information_in_pixel.size(); ++i)
    {
      s << indent << "  room_information_in_pixel[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ipa_building_msgs::RoomInformation_<ContainerAllocator> >::stream(s, indent + "    ", v.room_information_in_pixel[i]);
    }
    s << indent << "robot_radius: ";
    Printer<double>::stream(s, indent + "  ", v.robot_radius);
    s << indent << "robot_start_coordinate: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.robot_start_coordinate);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IPA_BUILDING_MSGS_MESSAGE_FINDROOMSEQUENCEWITHCHECKPOINTSGOAL_H
