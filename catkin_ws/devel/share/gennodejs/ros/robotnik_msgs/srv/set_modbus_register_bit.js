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

class set_modbus_register_bitRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.address = null;
      this.bit = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('address')) {
        this.address = initObj.address
      }
      else {
        this.address = 0;
      }
      if (initObj.hasOwnProperty('bit')) {
        this.bit = initObj.bit
      }
      else {
        this.bit = 0;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_modbus_register_bitRequest
    // Serialize message field [address]
    bufferOffset = _serializer.int16(obj.address, buffer, bufferOffset);
    // Serialize message field [bit]
    bufferOffset = _serializer.int16(obj.bit, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.bool(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_modbus_register_bitRequest
    let len;
    let data = new set_modbus_register_bitRequest(null);
    // Deserialize message field [address]
    data.address = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [bit]
    data.bit = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/set_modbus_register_bitRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '802ee9818bd86ff018a6b6838f90a10a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 address
    int16 bit
    bool value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_modbus_register_bitRequest(null);
    if (msg.address !== undefined) {
      resolved.address = msg.address;
    }
    else {
      resolved.address = 0
    }

    if (msg.bit !== undefined) {
      resolved.bit = msg.bit;
    }
    else {
      resolved.bit = 0
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = false
    }

    return resolved;
    }
};

class set_modbus_register_bitResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ret = null;
    }
    else {
      if (initObj.hasOwnProperty('ret')) {
        this.ret = initObj.ret
      }
      else {
        this.ret = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_modbus_register_bitResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.bool(obj.ret, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_modbus_register_bitResponse
    let len;
    let data = new set_modbus_register_bitResponse(null);
    // Deserialize message field [ret]
    data.ret = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotnik_msgs/set_modbus_register_bitResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2cc9e9d8c464550830df49c160979ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ret
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_modbus_register_bitResponse(null);
    if (msg.ret !== undefined) {
      resolved.ret = msg.ret;
    }
    else {
      resolved.ret = false
    }

    return resolved;
    }
};

module.exports = {
  Request: set_modbus_register_bitRequest,
  Response: set_modbus_register_bitResponse,
  md5sum() { return '69640e6c2ff2509eb8d9047b1c2b68df'; },
  datatype() { return 'robotnik_msgs/set_modbus_register_bit'; }
};
