// Auto-generated. Do not edit!

// (in-package robotnik_pad_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MovementStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.velocity_level = null;
      this.kinematic_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('velocity_level')) {
        this.velocity_level = initObj.velocity_level
      }
      else {
        this.velocity_level = 0.0;
      }
      if (initObj.hasOwnProperty('kinematic_mode')) {
        this.kinematic_mode = initObj.kinematic_mode
      }
      else {
        this.kinematic_mode = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MovementStatus
    // Serialize message field [velocity_level]
    bufferOffset = _serializer.float32(obj.velocity_level, buffer, bufferOffset);
    // Serialize message field [kinematic_mode]
    bufferOffset = _serializer.string(obj.kinematic_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MovementStatus
    let len;
    let data = new MovementStatus(null);
    // Deserialize message field [velocity_level]
    data.velocity_level = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [kinematic_mode]
    data.kinematic_mode = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.kinematic_mode);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_pad_msgs/MovementStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c8160ce2c4f4adfe5c5d11e61af5bad5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 velocity_level
    string kinematic_mode
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MovementStatus(null);
    if (msg.velocity_level !== undefined) {
      resolved.velocity_level = msg.velocity_level;
    }
    else {
      resolved.velocity_level = 0.0
    }

    if (msg.kinematic_mode !== undefined) {
      resolved.kinematic_mode = msg.kinematic_mode;
    }
    else {
      resolved.kinematic_mode = ''
    }

    return resolved;
    }
};

module.exports = MovementStatus;
