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

class SetElevatorControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.under_control = null;
      this.master_id = null;
      this.control_token = null;
    }
    else {
      if (initObj.hasOwnProperty('under_control')) {
        this.under_control = initObj.under_control
      }
      else {
        this.under_control = false;
      }
      if (initObj.hasOwnProperty('master_id')) {
        this.master_id = initObj.master_id
      }
      else {
        this.master_id = '';
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
    // Serializes a message object of type SetElevatorControlRequest
    // Serialize message field [under_control]
    bufferOffset = _serializer.bool(obj.under_control, buffer, bufferOffset);
    // Serialize message field [master_id]
    bufferOffset = _serializer.string(obj.master_id, buffer, bufferOffset);
    // Serialize message field [control_token]
    bufferOffset = _serializer.string(obj.control_token, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetElevatorControlRequest
    let len;
    let data = new SetElevatorControlRequest(null);
    // Deserialize message field [under_control]
    data.under_control = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [master_id]
    data.master_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [control_token]
    data.control_token = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.master_id);
    length += _getByteLength(object.control_token);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_elevator_interface_msgs/SetElevatorControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c153229591ef4c5958efac4406d734ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # flat to set or not the control
    bool under_control
    # id to identify who is controlling the elevator
    string master_id
    # unique control token to avoid controlling the elevator from external agents
    string control_token
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetElevatorControlRequest(null);
    if (msg.under_control !== undefined) {
      resolved.under_control = msg.under_control;
    }
    else {
      resolved.under_control = false
    }

    if (msg.master_id !== undefined) {
      resolved.master_id = msg.master_id;
    }
    else {
      resolved.master_id = ''
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

class SetElevatorControlResponse {
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
    // Serializes a message object of type SetElevatorControlResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetElevatorControlResponse
    let len;
    let data = new SetElevatorControlResponse(null);
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
    return 'robotnik_elevator_interface_msgs/SetElevatorControlResponse';
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
    const resolved = new SetElevatorControlResponse(null);
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
  Request: SetElevatorControlRequest,
  Response: SetElevatorControlResponse,
  md5sum() { return '6e754663daea7761789300acea2dd9dd'; },
  datatype() { return 'robotnik_elevator_interface_msgs/SetElevatorControl'; }
};
