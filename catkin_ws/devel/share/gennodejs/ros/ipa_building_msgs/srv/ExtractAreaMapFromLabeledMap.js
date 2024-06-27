// Auto-generated. Do not edit!

// (in-package ipa_building_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ExtractAreaMapFromLabeledMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.segmented_map = null;
      this.segment_of_interest = null;
    }
    else {
      if (initObj.hasOwnProperty('segmented_map')) {
        this.segmented_map = initObj.segmented_map
      }
      else {
        this.segmented_map = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('segment_of_interest')) {
        this.segment_of_interest = initObj.segment_of_interest
      }
      else {
        this.segment_of_interest = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExtractAreaMapFromLabeledMapRequest
    // Serialize message field [segmented_map]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.segmented_map, buffer, bufferOffset);
    // Serialize message field [segment_of_interest]
    bufferOffset = _serializer.int32(obj.segment_of_interest, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExtractAreaMapFromLabeledMapRequest
    let len;
    let data = new ExtractAreaMapFromLabeledMapRequest(null);
    // Deserialize message field [segmented_map]
    data.segmented_map = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [segment_of_interest]
    data.segment_of_interest = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.segmented_map);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ipa_building_msgs/ExtractAreaMapFromLabeledMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f51e808cfeaacccbb271d4b8435d4774';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The request message provides a segmented map which consists of cells with label 0 for inaccessible areas and other number from 1 to N
    # for labeling membership with one of the N segmented areas.
    # The return message shall deliver the same map but with only one area (segment_of_interest) labeled as 255 and the remainder labeled
    # as inaccessible with 0.
    
    sensor_msgs/Image segmented_map		# a map segmented into N areas which carry the respective segment number in every pixel cell,
    									# format 32SC1, room labels from 1 to N, 0 represents inaccessible cells (e.g. walls)
    int32 segment_of_interest		# the specific area label of the area of which a map shall be created
    
    
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
    const resolved = new ExtractAreaMapFromLabeledMapRequest(null);
    if (msg.segmented_map !== undefined) {
      resolved.segmented_map = sensor_msgs.msg.Image.Resolve(msg.segmented_map)
    }
    else {
      resolved.segmented_map = new sensor_msgs.msg.Image()
    }

    if (msg.segment_of_interest !== undefined) {
      resolved.segment_of_interest = msg.segment_of_interest;
    }
    else {
      resolved.segment_of_interest = 0
    }

    return resolved;
    }
};

class ExtractAreaMapFromLabeledMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.segmented_area = null;
    }
    else {
      if (initObj.hasOwnProperty('segmented_area')) {
        this.segmented_area = initObj.segmented_area
      }
      else {
        this.segmented_area = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExtractAreaMapFromLabeledMapResponse
    // Serialize message field [segmented_area]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.segmented_area, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExtractAreaMapFromLabeledMapResponse
    let len;
    let data = new ExtractAreaMapFromLabeledMapResponse(null);
    // Deserialize message field [segmented_area]
    data.segmented_area = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.segmented_area);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ipa_building_msgs/ExtractAreaMapFromLabeledMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '030622fb7222ad9ac708ee333dc71378';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    sensor_msgs/Image segmented_area	# a map that only contains the area which is labeled with segment_of_interest in segmented_map,
    									# the parts of that area are labeled as 255 in this map and the remainder is labeled as inaccessible with 0
    									# data type is a 8bit single-channel image (format 8UC1)
    
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
    const resolved = new ExtractAreaMapFromLabeledMapResponse(null);
    if (msg.segmented_area !== undefined) {
      resolved.segmented_area = sensor_msgs.msg.Image.Resolve(msg.segmented_area)
    }
    else {
      resolved.segmented_area = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

module.exports = {
  Request: ExtractAreaMapFromLabeledMapRequest,
  Response: ExtractAreaMapFromLabeledMapResponse,
  md5sum() { return '678bbdebce5d5e355861b28b37e6fe3c'; },
  datatype() { return 'ipa_building_msgs/ExtractAreaMapFromLabeledMap'; }
};
