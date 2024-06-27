// Auto-generated. Do not edit!

// (in-package ipa_building_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class MapSegmentationGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input_map = null;
      this.map_resolution = null;
      this.map_origin = null;
      this.return_format_in_pixel = null;
      this.return_format_in_meter = null;
      this.robot_radius = null;
      this.room_segmentation_algorithm = null;
    }
    else {
      if (initObj.hasOwnProperty('input_map')) {
        this.input_map = initObj.input_map
      }
      else {
        this.input_map = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('map_resolution')) {
        this.map_resolution = initObj.map_resolution
      }
      else {
        this.map_resolution = 0.0;
      }
      if (initObj.hasOwnProperty('map_origin')) {
        this.map_origin = initObj.map_origin
      }
      else {
        this.map_origin = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('return_format_in_pixel')) {
        this.return_format_in_pixel = initObj.return_format_in_pixel
      }
      else {
        this.return_format_in_pixel = false;
      }
      if (initObj.hasOwnProperty('return_format_in_meter')) {
        this.return_format_in_meter = initObj.return_format_in_meter
      }
      else {
        this.return_format_in_meter = false;
      }
      if (initObj.hasOwnProperty('robot_radius')) {
        this.robot_radius = initObj.robot_radius
      }
      else {
        this.robot_radius = 0.0;
      }
      if (initObj.hasOwnProperty('room_segmentation_algorithm')) {
        this.room_segmentation_algorithm = initObj.room_segmentation_algorithm
      }
      else {
        this.room_segmentation_algorithm = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapSegmentationGoal
    // Serialize message field [input_map]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.input_map, buffer, bufferOffset);
    // Serialize message field [map_resolution]
    bufferOffset = _serializer.float32(obj.map_resolution, buffer, bufferOffset);
    // Serialize message field [map_origin]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.map_origin, buffer, bufferOffset);
    // Serialize message field [return_format_in_pixel]
    bufferOffset = _serializer.bool(obj.return_format_in_pixel, buffer, bufferOffset);
    // Serialize message field [return_format_in_meter]
    bufferOffset = _serializer.bool(obj.return_format_in_meter, buffer, bufferOffset);
    // Serialize message field [robot_radius]
    bufferOffset = _serializer.float32(obj.robot_radius, buffer, bufferOffset);
    // Serialize message field [room_segmentation_algorithm]
    bufferOffset = _serializer.int32(obj.room_segmentation_algorithm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapSegmentationGoal
    let len;
    let data = new MapSegmentationGoal(null);
    // Deserialize message field [input_map]
    data.input_map = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [map_resolution]
    data.map_resolution = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [map_origin]
    data.map_origin = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [return_format_in_pixel]
    data.return_format_in_pixel = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [return_format_in_meter]
    data.return_format_in_meter = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [robot_radius]
    data.robot_radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [room_segmentation_algorithm]
    data.room_segmentation_algorithm = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.input_map);
    return length + 70;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ipa_building_msgs/MapSegmentationGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '005594594c5d18af6e00b99b0307120a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Map Segmentation action
    # Provides interface to get the segmented map
    
    # goal definition
    sensor_msgs/Image input_map				# the action server need a map as a input image to segment it, IMPORTANT: The algorithm needs a black and white 8bit single-channel image (format 8UC1), which is 0 (black) for obstacles and 255 (white) for free space
    float32 map_resolution					# the resolution of the map in [meter/cell]
    geometry_msgs/Pose map_origin			# the origin of the map in [meter]
    bool return_format_in_pixel				# return room data (see below) in [pixel]
    bool return_format_in_meter				# return room data (see below) in [meter]
    float32 robot_radius					# in [meter]; if this variable is set to a value greater than 0, the room centers are chosen at locations that are reachable from neighboring rooms (i.e. not inside the legs of a table surrounded by chairs)
    int32 room_segmentation_algorithm		# optionally overrides the parameterized segmentation method (if -1 it just takes the preset)
    										#  0 = take the preset (parameterized) method
    										#  1 = MorphologicalSegmentation
    										#  2 = DistanceSegmentation
    										#  3 = VoronoiSegmentation
    										#  4 = SemanticSegmentation
    										#  5 = RandomFieldSegmentation
    										# 99 = PassThrough (just get a pre-segmented map into the right output format)
    
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapSegmentationGoal(null);
    if (msg.input_map !== undefined) {
      resolved.input_map = sensor_msgs.msg.Image.Resolve(msg.input_map)
    }
    else {
      resolved.input_map = new sensor_msgs.msg.Image()
    }

    if (msg.map_resolution !== undefined) {
      resolved.map_resolution = msg.map_resolution;
    }
    else {
      resolved.map_resolution = 0.0
    }

    if (msg.map_origin !== undefined) {
      resolved.map_origin = geometry_msgs.msg.Pose.Resolve(msg.map_origin)
    }
    else {
      resolved.map_origin = new geometry_msgs.msg.Pose()
    }

    if (msg.return_format_in_pixel !== undefined) {
      resolved.return_format_in_pixel = msg.return_format_in_pixel;
    }
    else {
      resolved.return_format_in_pixel = false
    }

    if (msg.return_format_in_meter !== undefined) {
      resolved.return_format_in_meter = msg.return_format_in_meter;
    }
    else {
      resolved.return_format_in_meter = false
    }

    if (msg.robot_radius !== undefined) {
      resolved.robot_radius = msg.robot_radius;
    }
    else {
      resolved.robot_radius = 0.0
    }

    if (msg.room_segmentation_algorithm !== undefined) {
      resolved.room_segmentation_algorithm = msg.room_segmentation_algorithm;
    }
    else {
      resolved.room_segmentation_algorithm = 0
    }

    return resolved;
    }
};

module.exports = MapSegmentationGoal;
