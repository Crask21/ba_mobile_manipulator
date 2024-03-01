// Auto-generated. Do not edit!

// (in-package robotnik_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Logger = require('../msg/Logger.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class LoggerQueryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.query = null;
      this.max_records = null;
    }
    else {
      if (initObj.hasOwnProperty('query')) {
        this.query = initObj.query
      }
      else {
        this.query = new Logger();
      }
      if (initObj.hasOwnProperty('max_records')) {
        this.max_records = initObj.max_records
      }
      else {
        this.max_records = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoggerQueryRequest
    // Serialize message field [query]
    bufferOffset = Logger.serialize(obj.query, buffer, bufferOffset);
    // Serialize message field [max_records]
    bufferOffset = _serializer.int32(obj.max_records, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoggerQueryRequest
    let len;
    let data = new LoggerQueryRequest(null);
    // Deserialize message field [query]
    data.query = Logger.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_records]
    data.max_records = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Logger.getMessageSize(object.query);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/LoggerQueryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '513c0e1ab0f24516bc79aea9c7adc2e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Logger query
    int32 max_records
    
    ================================================================================
    MSG: robotnik_msgs/Logger
    string LOG_LEVEL_INFO=INFO
    string LOG_LEVEL_WARNING=WARNING
    string LOG_LEVEL_ERROR=ERROR
    string LOG_LEVEL_DEBUG=DEBUG
    string LOG_LEVEL_USER=USER
    string robot_id
    string date_time
    string component
    string tag
    string log_level
    string description
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoggerQueryRequest(null);
    if (msg.query !== undefined) {
      resolved.query = Logger.Resolve(msg.query)
    }
    else {
      resolved.query = new Logger()
    }

    if (msg.max_records !== undefined) {
      resolved.max_records = msg.max_records;
    }
    else {
      resolved.max_records = 0
    }

    return resolved;
    }
};

class LoggerQueryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = [];
      }
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
    // Serializes a message object of type LoggerQueryResponse
    // Serialize message field [result]
    // Serialize the length for message field [result]
    bufferOffset = _serializer.uint32(obj.result.length, buffer, bufferOffset);
    obj.result.forEach((val) => {
      bufferOffset = Logger.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoggerQueryResponse
    let len;
    let data = new LoggerQueryResponse(null);
    // Deserialize message field [result]
    // Deserialize array length for message field [result]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.result = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.result[i] = Logger.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.result.forEach((val) => {
      length += Logger.getMessageSize(val);
    });
    length += _getByteLength(object.message);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/LoggerQueryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2194465d56c21a92c0e88bd03eb8d0d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Logger[] result
    bool success
    string message
    
    ================================================================================
    MSG: robotnik_msgs/Logger
    string LOG_LEVEL_INFO=INFO
    string LOG_LEVEL_WARNING=WARNING
    string LOG_LEVEL_ERROR=ERROR
    string LOG_LEVEL_DEBUG=DEBUG
    string LOG_LEVEL_USER=USER
    string robot_id
    string date_time
    string component
    string tag
    string log_level
    string description
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoggerQueryResponse(null);
    if (msg.result !== undefined) {
      resolved.result = new Array(msg.result.length);
      for (let i = 0; i < resolved.result.length; ++i) {
        resolved.result[i] = Logger.Resolve(msg.result[i]);
      }
    }
    else {
      resolved.result = []
    }

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
  Request: LoggerQueryRequest,
  Response: LoggerQueryResponse,
  md5sum() { return '9866c376d3d7b158d2eeafc9ef42a380'; },
  datatype() { return 'robotnik_msgs/LoggerQuery'; }
};
