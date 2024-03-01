// Auto-generated. Do not edit!

// (in-package robotnik_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RecordStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.recording = null;
      this.recording_time = null;
      this.state_description = null;
    }
    else {
      if (initObj.hasOwnProperty('recording')) {
        this.recording = initObj.recording
      }
      else {
        this.recording = false;
      }
      if (initObj.hasOwnProperty('recording_time')) {
        this.recording_time = initObj.recording_time
      }
      else {
        this.recording_time = 0;
      }
      if (initObj.hasOwnProperty('state_description')) {
        this.state_description = initObj.state_description
      }
      else {
        this.state_description = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecordStatus
    // Serialize message field [recording]
    bufferOffset = _serializer.bool(obj.recording, buffer, bufferOffset);
    // Serialize message field [recording_time]
    bufferOffset = _serializer.int32(obj.recording_time, buffer, bufferOffset);
    // Serialize message field [state_description]
    bufferOffset = _serializer.string(obj.state_description, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecordStatus
    let len;
    let data = new RecordStatus(null);
    // Deserialize message field [recording]
    data.recording = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [recording_time]
    data.recording_time = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [state_description]
    data.state_description = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.state_description);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_msgs/RecordStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '536d9648c6be2c09d55b8554e09a4f2c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool recording
    int32 recording_time
    string state_description
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecordStatus(null);
    if (msg.recording !== undefined) {
      resolved.recording = msg.recording;
    }
    else {
      resolved.recording = false
    }

    if (msg.recording_time !== undefined) {
      resolved.recording_time = msg.recording_time;
    }
    else {
      resolved.recording_time = 0
    }

    if (msg.state_description !== undefined) {
      resolved.state_description = msg.state_description;
    }
    else {
      resolved.state_description = ''
    }

    return resolved;
    }
};

module.exports = RecordStatus;
