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

class RoomExplorationGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input_map = null;
      this.map_resolution = null;
      this.map_origin = null;
      this.robot_radius = null;
      this.coverage_radius = null;
      this.field_of_view = null;
      this.field_of_view_origin = null;
      this.starting_position = null;
      this.planning_mode = null;
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
      if (initObj.hasOwnProperty('robot_radius')) {
        this.robot_radius = initObj.robot_radius
      }
      else {
        this.robot_radius = 0.0;
      }
      if (initObj.hasOwnProperty('coverage_radius')) {
        this.coverage_radius = initObj.coverage_radius
      }
      else {
        this.coverage_radius = 0.0;
      }
      if (initObj.hasOwnProperty('field_of_view')) {
        this.field_of_view = initObj.field_of_view
      }
      else {
        this.field_of_view = [];
      }
      if (initObj.hasOwnProperty('field_of_view_origin')) {
        this.field_of_view_origin = initObj.field_of_view_origin
      }
      else {
        this.field_of_view_origin = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('starting_position')) {
        this.starting_position = initObj.starting_position
      }
      else {
        this.starting_position = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('planning_mode')) {
        this.planning_mode = initObj.planning_mode
      }
      else {
        this.planning_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoomExplorationGoal
    // Serialize message field [input_map]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.input_map, buffer, bufferOffset);
    // Serialize message field [map_resolution]
    bufferOffset = _serializer.float32(obj.map_resolution, buffer, bufferOffset);
    // Serialize message field [map_origin]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.map_origin, buffer, bufferOffset);
    // Serialize message field [robot_radius]
    bufferOffset = _serializer.float32(obj.robot_radius, buffer, bufferOffset);
    // Serialize message field [coverage_radius]
    bufferOffset = _serializer.float32(obj.coverage_radius, buffer, bufferOffset);
    // Serialize message field [field_of_view]
    // Serialize the length for message field [field_of_view]
    bufferOffset = _serializer.uint32(obj.field_of_view.length, buffer, bufferOffset);
    obj.field_of_view.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point32.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [field_of_view_origin]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.field_of_view_origin, buffer, bufferOffset);
    // Serialize message field [starting_position]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.starting_position, buffer, bufferOffset);
    // Serialize message field [planning_mode]
    bufferOffset = _serializer.int32(obj.planning_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoomExplorationGoal
    let len;
    let data = new RoomExplorationGoal(null);
    // Deserialize message field [input_map]
    data.input_map = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [map_resolution]
    data.map_resolution = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [map_origin]
    data.map_origin = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_radius]
    data.robot_radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [coverage_radius]
    data.coverage_radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [field_of_view]
    // Deserialize array length for message field [field_of_view]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.field_of_view = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.field_of_view[i] = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [field_of_view_origin]
    data.field_of_view_origin = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [starting_position]
    data.starting_position = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [planning_mode]
    data.planning_mode = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.input_map);
    length += 12 * object.field_of_view.length;
    return length + 112;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ipa_building_msgs/RoomExplorationGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '138d823e8057c5cbb0a8a15be2afce8f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Room Exploration action
    # sends an occupancy grid map of a room to the server, which plans a path trough it to cover or inspect the whole room by a device or camera
    
    # goal definition
    sensor_msgs/Image input_map				# the action server needs a map as a input image to segment it,
    										# IMPORTANT: The algorithm needs a black and white 8bit single-channel image (format 8UC1), which is 0 (black) for obstacles and 255 (white) for free space
    										#            todo: the image needs to be vertically mirrored compared to the map in RViz for using right coordinate systems
    										#                  OccupancyGrid map = origin lower left corner, image = origin upper left corner
    										#            todo: take the OccupanyGrid message here instead to avoid confusion and deal with map coordinates in server
    float32 map_resolution					# the resolution of the map in [meter/cell]
    geometry_msgs/Pose map_origin			# the origin of the map in [meter], NOTE: rotations are not supported for now
    float32 robot_radius					# effective robot radius, taking the enlargement of the costmap into account, in [meter]
    float32 coverage_radius					# radius that is used to plan the coverage planning for the robot and not the field of view, assuming that the part that needs to cover everything (e.g. the cleaning part) can be represented by a fitting circle (e.g. smaller than the actual part to ensure coverage), in [meter]
    geometry_msgs/Point32[] field_of_view	# the 4 points that define the field of view of the robot, relatively to the robot coordinate system (with x pointing forwards and y pointing to the left), in [meter]
    geometry_msgs/Point32 field_of_view_origin	# the mounting position of the camera spanning the field of view, relative to the robot center (x-axis points to robot's front side, y-axis points to robot's left side, z-axis upwards), in [meter]
    geometry_msgs/Pose2D starting_position	# starting pose of the robot in the room coordinate system [meter,meter,rad]
    int32 planning_mode						# 1 = plans a path for coverage with the robot footprint, 2 = plans a path for coverage with the robot's field of view
    
    
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
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoomExplorationGoal(null);
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

    if (msg.robot_radius !== undefined) {
      resolved.robot_radius = msg.robot_radius;
    }
    else {
      resolved.robot_radius = 0.0
    }

    if (msg.coverage_radius !== undefined) {
      resolved.coverage_radius = msg.coverage_radius;
    }
    else {
      resolved.coverage_radius = 0.0
    }

    if (msg.field_of_view !== undefined) {
      resolved.field_of_view = new Array(msg.field_of_view.length);
      for (let i = 0; i < resolved.field_of_view.length; ++i) {
        resolved.field_of_view[i] = geometry_msgs.msg.Point32.Resolve(msg.field_of_view[i]);
      }
    }
    else {
      resolved.field_of_view = []
    }

    if (msg.field_of_view_origin !== undefined) {
      resolved.field_of_view_origin = geometry_msgs.msg.Point32.Resolve(msg.field_of_view_origin)
    }
    else {
      resolved.field_of_view_origin = new geometry_msgs.msg.Point32()
    }

    if (msg.starting_position !== undefined) {
      resolved.starting_position = geometry_msgs.msg.Pose2D.Resolve(msg.starting_position)
    }
    else {
      resolved.starting_position = new geometry_msgs.msg.Pose2D()
    }

    if (msg.planning_mode !== undefined) {
      resolved.planning_mode = msg.planning_mode;
    }
    else {
      resolved.planning_mode = 0
    }

    return resolved;
    }
};

module.exports = RoomExplorationGoal;
