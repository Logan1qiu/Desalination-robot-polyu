// Auto-generated. Do not edit!

// (in-package ipa_building_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class CheckCoverageRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input_map = null;
      this.map_resolution = null;
      this.map_origin = null;
      this.path = null;
      this.field_of_view = null;
      this.field_of_view_origin = null;
      this.coverage_radius = null;
      this.check_for_footprint = null;
      this.check_number_of_coverages = null;
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
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = [];
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
      if (initObj.hasOwnProperty('coverage_radius')) {
        this.coverage_radius = initObj.coverage_radius
      }
      else {
        this.coverage_radius = 0.0;
      }
      if (initObj.hasOwnProperty('check_for_footprint')) {
        this.check_for_footprint = initObj.check_for_footprint
      }
      else {
        this.check_for_footprint = false;
      }
      if (initObj.hasOwnProperty('check_number_of_coverages')) {
        this.check_number_of_coverages = initObj.check_number_of_coverages
      }
      else {
        this.check_number_of_coverages = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckCoverageRequest
    // Serialize message field [input_map]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.input_map, buffer, bufferOffset);
    // Serialize message field [map_resolution]
    bufferOffset = _serializer.float32(obj.map_resolution, buffer, bufferOffset);
    // Serialize message field [map_origin]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.map_origin, buffer, bufferOffset);
    // Serialize message field [path]
    // Serialize the length for message field [path]
    bufferOffset = _serializer.uint32(obj.path.length, buffer, bufferOffset);
    obj.path.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [field_of_view]
    // Serialize the length for message field [field_of_view]
    bufferOffset = _serializer.uint32(obj.field_of_view.length, buffer, bufferOffset);
    obj.field_of_view.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point32.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [field_of_view_origin]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.field_of_view_origin, buffer, bufferOffset);
    // Serialize message field [coverage_radius]
    bufferOffset = _serializer.float32(obj.coverage_radius, buffer, bufferOffset);
    // Serialize message field [check_for_footprint]
    bufferOffset = _serializer.bool(obj.check_for_footprint, buffer, bufferOffset);
    // Serialize message field [check_number_of_coverages]
    bufferOffset = _serializer.bool(obj.check_number_of_coverages, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckCoverageRequest
    let len;
    let data = new CheckCoverageRequest(null);
    // Deserialize message field [input_map]
    data.input_map = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [map_resolution]
    data.map_resolution = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [map_origin]
    data.map_origin = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [path]
    // Deserialize array length for message field [path]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.path = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.path[i] = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [field_of_view]
    // Deserialize array length for message field [field_of_view]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.field_of_view = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.field_of_view[i] = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [field_of_view_origin]
    data.field_of_view_origin = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [coverage_radius]
    data.coverage_radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [check_for_footprint]
    data.check_for_footprint = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [check_number_of_coverages]
    data.check_number_of_coverages = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.input_map);
    length += 24 * object.path.length;
    length += 12 * object.field_of_view.length;
    return length + 86;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ipa_building_msgs/CheckCoverageRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae6d4c81597e3fc1b51bfbc1504d8ce0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/Image input_map				# the action server need a map as a input image to segment it, IMPORTANT: The algorithm needs a black and white 8bit single-channel image, which is 0 (black) for obstacles and 255 (white) for free space
    float32 map_resolution					# resolution of the given map, in [meter/cell]
    geometry_msgs/Pose map_origin			# the origin of the map, in [meter]
    geometry_msgs/Pose2D[] path				# check the coverage along this path of the robot center, in the world frame in [meter]
    geometry_msgs/Point32[] field_of_view	# the points that define the field of view of the robot, relative to the robot center (x-axis points to robot's front side, y-axis points to robot's left side, z-axis upwards), in [meter]
    geometry_msgs/Point32 field_of_view_origin	# the mounting position of the camera spanning the field of view, relative to the robot center (x-axis points to robot's front side, y-axis points to robot's left side, z-axis upwards), in [meter]
    float32 coverage_radius					# radius that is used to plan the coverage planning for the robot and not the field of view, assuming that the part that needs to cover everything (e.g. the cleaning part) can be represented by a fitting circle (e.g. smaller than the actual part to ensure coverage), in [meter]
    bool check_for_footprint				# determine, if the coverage check should be done for the footprint or the field of view
    bool check_number_of_coverages			# if set, the server returns a map that shows how often one pixel has been covered during the path, return format: 32bit single-channel image
    
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
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckCoverageRequest(null);
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

    if (msg.path !== undefined) {
      resolved.path = new Array(msg.path.length);
      for (let i = 0; i < resolved.path.length; ++i) {
        resolved.path[i] = geometry_msgs.msg.Pose2D.Resolve(msg.path[i]);
      }
    }
    else {
      resolved.path = []
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

    if (msg.coverage_radius !== undefined) {
      resolved.coverage_radius = msg.coverage_radius;
    }
    else {
      resolved.coverage_radius = 0.0
    }

    if (msg.check_for_footprint !== undefined) {
      resolved.check_for_footprint = msg.check_for_footprint;
    }
    else {
      resolved.check_for_footprint = false
    }

    if (msg.check_number_of_coverages !== undefined) {
      resolved.check_number_of_coverages = msg.check_number_of_coverages;
    }
    else {
      resolved.check_number_of_coverages = false
    }

    return resolved;
    }
};

class CheckCoverageResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.coverage_map = null;
      this.number_of_coverage_image = null;
    }
    else {
      if (initObj.hasOwnProperty('coverage_map')) {
        this.coverage_map = initObj.coverage_map
      }
      else {
        this.coverage_map = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('number_of_coverage_image')) {
        this.number_of_coverage_image = initObj.number_of_coverage_image
      }
      else {
        this.number_of_coverage_image = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckCoverageResponse
    // Serialize message field [coverage_map]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.coverage_map, buffer, bufferOffset);
    // Serialize message field [number_of_coverage_image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.number_of_coverage_image, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckCoverageResponse
    let len;
    let data = new CheckCoverageResponse(null);
    // Deserialize message field [coverage_map]
    data.coverage_map = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [number_of_coverage_image]
    data.number_of_coverage_image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.coverage_map);
    length += sensor_msgs.msg.Image.getMessageSize(object.number_of_coverage_image);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ipa_building_msgs/CheckCoverageResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '865c7fafe99812cfbb8cf565a04ce3a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/Image coverage_map			# the map that has the covered areas drawn in, with a value of 255, an 8bit single-channel image
    sensor_msgs/Image number_of_coverage_image	# the image that carries for each pixel the number of coverages when executing the path, 32bit single-channel image
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckCoverageResponse(null);
    if (msg.coverage_map !== undefined) {
      resolved.coverage_map = sensor_msgs.msg.Image.Resolve(msg.coverage_map)
    }
    else {
      resolved.coverage_map = new sensor_msgs.msg.Image()
    }

    if (msg.number_of_coverage_image !== undefined) {
      resolved.number_of_coverage_image = sensor_msgs.msg.Image.Resolve(msg.number_of_coverage_image)
    }
    else {
      resolved.number_of_coverage_image = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

module.exports = {
  Request: CheckCoverageRequest,
  Response: CheckCoverageResponse,
  md5sum() { return 'c39dded0eb0ee02116211ecd0f2054c1'; },
  datatype() { return 'ipa_building_msgs/CheckCoverage'; }
};
