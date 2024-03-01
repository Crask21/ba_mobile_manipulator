// Auto-generated. Do not edit!

// (in-package robotnik_elevator_interface_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GoToFloorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.floor = null;
      this.control_token = null;
    }
    else {
      if (initObj.hasOwnProperty('floor')) {
        this.floor = initObj.floor
      }
      else {
        this.floor = 0;
      }
      if (initObj.hasOwnProperty('control_token')) {
        this.control_token = initObj.control_token
      }
      else {
        this.control_token = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoToFloorRequest
    // Serialize message field [floor]
    bufferOffset = _serializer.int32(obj.floor, buffer, bufferOffset);
    // Serialize message field [control_token]
    bufferOffset = _serializer.string(obj.control_token, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoToFloorRequest
    let len;
    let data = new GoToFloorRequest(null);
    // Deserialize message field [floor]
    data.floor = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [control_token]
    data.control_token = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.control_token);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_elevator_interface_msgs/GoToFloorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb7620e69dacb5ea06f5b85abb818c5a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 floor
    # unique control token to avoid controlling the elevator from external agents
    string control_token
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoToFloorRequest(null);
    if (msg.floor !== undefined) {
      resolved.floor = msg.floor;
    }
    else {
      resolved.floor = 0
    }

    if (msg.control_token !== undefined) {
      resolved.control_token = msg.control_token;
    }
    else {
      resolved.control_token = ''
    }

    return resolved;
    }
};

class GoToFloorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoToFloorResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoToFloorResponse
    let len;
    let data = new GoToFloorResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_elevator_interface_msgs/GoToFloorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoToFloorResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GoToFloorRequest,
  Response: GoToFloorResponse,
  md5sum() { return '597b9b64f569298d176a3be74c2f6432'; },
  datatype() { return 'robotnik_elevator_interface_msgs/GoToFloor'; }
};
