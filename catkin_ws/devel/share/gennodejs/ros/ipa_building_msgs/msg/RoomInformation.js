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

class RoomInformation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.room_min_max = null;
      this.room_center = null;
    }
    else {
      if (initObj.hasOwnProperty('room_min_max')) {
        this.room_min_max = initObj.room_min_max
      }
      else {
        this.room_min_max = new geometry_msgs.msg.Polygon();
      }
      if (initObj.hasOwnProperty('room_center')) {
        this.room_center = initObj.room_center
      }
      else {
        this.room_center = new geometry_msgs.msg.Point32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoomInformation
    // Serialize message field [room_min_max]
    bufferOffset = geometry_msgs.msg.Polygon.serialize(obj.room_min_max, buffer, bufferOffset);
    // Serialize message field [room_center]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.room_center, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoomInformation
    let len;
    let data = new RoomInformation(null);
    // Deserialize message field [room_min_max]
    data.room_min_max = geometry_msgs.msg.Polygon.deserialize(buffer, bufferOffset);
    // Deserialize message field [room_center]
    data.room_center = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.Polygon.getMessageSize(object.room_min_max);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ipa_building_msgs/RoomInformation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c095dc11b0eae6e6ce775e203036a201';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Polygon room_min_max		# first point provides the minimum (x,y)-coordinate values of the rooms, second point provides the maximum (x,y)-coordinate values of the rooms
    geometry_msgs/Point32 room_center		# provides the (x,y)-coordinate values of the room centers
    ================================================================================
    MSG: geometry_msgs/Polygon
    #A specification of a polygon where the first and last points are assumed to be connected
    Point32[] points
    
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
    const resolved = new RoomInformation(null);
    if (msg.room_min_max !== undefined) {
      resolved.room_min_max = geometry_msgs.msg.Polygon.Resolve(msg.room_min_max)
    }
    else {
      resolved.room_min_max = new geometry_msgs.msg.Polygon()
    }

    if (msg.room_center !== undefined) {
      resolved.room_center = geometry_msgs.msg.Point32.Resolve(msg.room_center)
    }
    else {
      resolved.room_center = new geometry_msgs.msg.Point32()
    }

    return resolved;
    }
};

module.exports = RoomInformation;
