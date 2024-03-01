// Auto-generated. Do not edit!

// (in-package robotnik_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RecordRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.file_name = null;
      this.max_time = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = '';
      }
      if (initObj.hasOwnProperty('file_name')) {
        this.file_name = initObj.file_name
      }
      else {
        this.file_name = '';
      }
      if (initObj.hasOwnProperty('max_time')) {
        this.max_time = initObj.max_time
      }
      else {
        this.max_time = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecordRequest
    // Serialize message field [action]
    bufferOffset = _serializer.string(obj.action, buffer, bufferOffset);
    // Serialize message field [file_name]
    bufferOffset = _serializer.string(obj.file_name, buffer, bufferOffset);
    // Serialize message field [max_time]
    bufferOffset = _serializer.int32(obj.max_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecordRequest
    let len;
    let data = new RecordRequest(null);
    // Deserialize message field [action]
    data.action = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [file_name]
    data.file_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [max_time]
    data.max_time = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.action);
    length += _getByteLength(object.file_name);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/RecordRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dbfe3d7a69656c931298b4f3f1693d9b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ACTION_RECORD=RECORD
    string ACTION_STOP=STOP
    string ACTION_SAVE=SAVE
    string action
    string file_name
    int32 max_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecordRequest(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = ''
    }

    if (msg.file_name !== undefined) {
      resolved.file_name = msg.file_name;
    }
    else {
      resolved.file_name = ''
    }

    if (msg.max_time !== undefined) {
      resolved.max_time = msg.max_time;
    }
    else {
      resolved.max_time = 0
    }

    return resolved;
    }
};

// Constants for message
RecordRequest.Constants = {
  ACTION_RECORD: 'RECORD',
  ACTION_STOP: 'STOP',
  ACTION_SAVE: 'SAVE',
}

class RecordResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecordResponse
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecordResponse
    let len;
    let data = new RecordResponse(null);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/RecordResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9bf829f07d795d3f9e541a07897da2c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string message
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecordResponse(null);
    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: RecordRequest,
  Response: RecordResponse,
  md5sum() { return 'b11ee07783432b9ca77edb829c7a5a8d'; },
  datatype() { return 'robotnik_msgs/Record'; }
};
