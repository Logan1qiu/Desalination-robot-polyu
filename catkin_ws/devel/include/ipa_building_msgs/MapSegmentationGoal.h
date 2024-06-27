// Generated by gencpp from file ipa_building_msgs/MapSegmentationGoal.msg
// DO NOT EDIT!


#ifndef IPA_BUILDING_MSGS_MESSAGE_MAPSEGMENTATIONGOAL_H
#define IPA_BUILDING_MSGS_MESSAGE_MAPSEGMENTATIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/Image.h>
#include <geometry_msgs/Pose.h>

namespace ipa_building_msgs
{
template <class ContainerAllocator>
struct MapSegmentationGoal_
{
  typedef MapSegmentationGoal_<ContainerAllocator> Type;

  MapSegmentationGoal_()
    : input_map()
    , map_resolution(0.0)
    , map_origin()
    , return_format_in_pixel(false)
    , return_format_in_meter(false)
    , robot_radius(0.0)
    , room_segmentation_algorithm(0)  {
    }
  MapSegmentationGoal_(const ContainerAllocator& _alloc)
    : input_map(_alloc)
    , map_resolution(0.0)
    , map_origin(_alloc)
    , return_format_in_pixel(false)
    , return_format_in_meter(false)
    , robot_radius(0.0)
    , room_segmentation_algorithm(0)  {
  (void)_alloc;
    }



   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _input_map_type;
  _input_map_type input_map;

   typedef float _map_resolution_type;
  _map_resolution_type map_resolution;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _map_origin_type;
  _map_origin_type map_origin;

   typedef uint8_t _return_format_in_pixel_type;
  _return_format_in_pixel_type return_format_in_pixel;

   typedef uint8_t _return_format_in_meter_type;
  _return_format_in_meter_type return_format_in_meter;

   typedef float _robot_radius_type;
  _robot_radius_type robot_radius;

   typedef int32_t _room_segmentation_algorithm_type;
  _room_segmentation_algorithm_type room_segmentation_algorithm;





  typedef boost::shared_ptr< ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator> const> ConstPtr;

}; // struct MapSegmentationGoal_

typedef ::ipa_building_msgs::MapSegmentationGoal_<std::allocator<void> > MapSegmentationGoal;

typedef boost::shared_ptr< ::ipa_building_msgs::MapSegmentationGoal > MapSegmentationGoalPtr;
typedef boost::shared_ptr< ::ipa_building_msgs::MapSegmentationGoal const> MapSegmentationGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator1> & lhs, const ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator2> & rhs)
{
  return lhs.input_map == rhs.input_map &&
    lhs.map_resolution == rhs.map_resolution &&
    lhs.map_origin == rhs.map_origin &&
    lhs.return_format_in_pixel == rhs.return_format_in_pixel &&
    lhs.return_format_in_meter == rhs.return_format_in_meter &&
    lhs.robot_radius == rhs.robot_radius &&
    lhs.room_segmentation_algorithm == rhs.room_segmentation_algorithm;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator1> & lhs, const ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ipa_building_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "005594594c5d18af6e00b99b0307120a";
  }

  static const char* value(const ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x005594594c5d18afULL;
  static const uint64_t static_value2 = 0x6e00b99b0307120aULL;
};

template<class ContainerAllocator>
struct DataType< ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ipa_building_msgs/MapSegmentationGoal";
  }

  static const char* value(const ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Map Segmentation action\n"
"# Provides interface to get the segmented map\n"
"\n"
"# goal definition\n"
"sensor_msgs/Image input_map				# the action server need a map as a input image to segment it, IMPORTANT: The algorithm needs a black and white 8bit single-channel image (format 8UC1), which is 0 (black) for obstacles and 255 (white) for free space\n"
"float32 map_resolution					# the resolution of the map in [meter/cell]\n"
"geometry_msgs/Pose map_origin			# the origin of the map in [meter]\n"
"bool return_format_in_pixel				# return room data (see below) in [pixel]\n"
"bool return_format_in_meter				# return room data (see below) in [meter]\n"
"float32 robot_radius					# in [meter]; if this variable is set to a value greater than 0, the room centers are chosen at locations that are reachable from neighboring rooms (i.e. not inside the legs of a table surrounded by chairs)\n"
"int32 room_segmentation_algorithm		# optionally overrides the parameterized segmentation method (if -1 it just takes the preset)\n"
"										#  0 = take the preset (parameterized) method\n"
"										#  1 = MorphologicalSegmentation\n"
"										#  2 = DistanceSegmentation\n"
"										#  3 = VoronoiSegmentation\n"
"										#  4 = SemanticSegmentation\n"
"										#  5 = RandomFieldSegmentation\n"
"										# 99 = PassThrough (just get a pre-segmented map into the right output format)\n"
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
;
  }

  static const char* value(const ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.input_map);
      stream.next(m.map_resolution);
      stream.next(m.map_origin);
      stream.next(m.return_format_in_pixel);
      stream.next(m.return_format_in_meter);
      stream.next(m.robot_radius);
      stream.next(m.room_segmentation_algorithm);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MapSegmentationGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ipa_building_msgs::MapSegmentationGoal_<ContainerAllocator>& v)
  {
    s << indent << "input_map: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.input_map);
    s << indent << "map_resolution: ";
    Printer<float>::stream(s, indent + "  ", v.map_resolution);
    s << indent << "map_origin: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.map_origin);
    s << indent << "return_format_in_pixel: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.return_format_in_pixel);
    s << indent << "return_format_in_meter: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.return_format_in_meter);
    s << indent << "robot_radius: ";
    Printer<float>::stream(s, indent + "  ", v.robot_radius);
    s << indent << "room_segmentation_algorithm: ";
    Printer<int32_t>::stream(s, indent + "  ", v.room_segmentation_algorithm);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IPA_BUILDING_MSGS_MESSAGE_MAPSEGMENTATIONGOAL_H
