// Auto-generated. Do not edit!

// (in-package ipa_building_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class RoomSequence {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.room_indices = null;
      this.checkpoint_position_in_pixel = null;
      this.checkpoint_position_in_meter = null;
    }
    else {
      if (initObj.hasOwnProperty('room_indices')) {
        this.room_indices = initObj.room_indices
      }
      else {
        this.room_indices = [];
      }
      if (initObj.hasOwnProperty('checkpoint_position_in_pixel')) {
        this.checkpoint_position_in_pixel = initObj.checkpoint_position_in_pixel
      }
      else {
        this.checkpoint_position_in_pixel = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('checkpoint_position_in_meter')) {
        this.checkpoint_position_in_meter = initObj.checkpoint_position_in_meter
      }
      else {
        this.checkpoint_position_in_meter = new geometry_msgs.msg.Point32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoomSequence
    // Serialize message field [room_indices]
    bufferOffset = _arraySerializer.uint32(obj.room_indices, buffer, bufferOffset, null);
    // Serialize message field [checkpoint_position_in_pixel]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.checkpoint_position_in_pixel, buffer, bufferOffset);
    // Serialize message field [checkpoint_position_in_meter]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.checkpoint_position_in_meter, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoomSequence
    let len;
    let data = new RoomSequence(null);
    // Deserialize message field [room_indices]
    data.room_indices = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [checkpoint_position_in_pixel]
    data.checkpoint_position_in_pixel = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [checkpoint_position_in_meter]
    data.checkpoint_position_in_meter = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.room_indices.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ipa_building_msgs/RoomSequence';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5409a76f4f210c24eb6c06e73dcdb711';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32[] room_indices		# indices of those rooms that belong to one group (connected to a checkpoint,
    							# i.e. the clique of rooms close [in terms of robot driving distance] to each other),
    							# indices should be ordered in optimized traveling salesman sequence
    geometry_msgs/Point32 checkpoint_position_in_pixel			# provides the (x,y)-coordinates of the checkpoint location for this group of rooms [in pixel]
    geometry_msgs/Point32 checkpoint_position_in_meter			# provides the (x,y)-coordinates of the checkpoint location for this group of rooms [in meter]
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
    const resolved = new RoomSequence(null);
    if (msg.room_indices !== undefined) {
      resolved.room_indices = msg.room_indices;
    }
    else {
      resolved.room_indices = []
    }

    if (msg.checkpoint_position_in_pixel !== undefined) {
      resolved.checkpoint_position_in_pixel = geometry_msgs.msg.Point32.Resolve(msg.checkpoint_position_in_pixel)
    }
    else {
      resolved.checkpoint_position_in_pixel = new geometry_msgs.msg.Point32()
    }

    if (msg.checkpoint_position_in_meter !== undefined) {
      resolved.checkpoint_position_in_meter = geometry_msgs.msg.Point32.Resolve(msg.checkpoint_position_in_meter)
    }
    else {
      resolved.checkpoint_position_in_meter = new geometry_msgs.msg.Point32()
    }

    return resolved;
    }
};

module.exports = RoomSequence;
