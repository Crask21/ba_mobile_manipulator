// Auto-generated. Do not edit!

// (in-package robotnik_elevator_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ElevatorState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.elevator_id = null;
      this.current_floor = null;
      this.target_floor = null;
      this.under_control = null;
      this.master_id = null;
      this.elevator_status = null;
      this.door_status = null;
      this.cabin_presence_free = null;
    }
    else {
      if (initObj.hasOwnProperty('elevator_id')) {
        this.elevator_id = initObj.elevator_id
      }
      else {
        this.elevator_id = '';
      }
      if (initObj.hasOwnProperty('current_floor')) {
        this.current_floor = initObj.current_floor
      }
      else {
        this.current_floor = 0;
      }
      if (initObj.hasOwnProperty('target_floor')) {
        this.target_floor = initObj.target_floor
      }
      else {
        this.target_floor = 0;
      }
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
      if (initObj.hasOwnProperty('elevator_status')) {
        this.elevator_status = initObj.elevator_status
      }
      else {
        this.elevator_status = '';
      }
      if (initObj.hasOwnProperty('door_status')) {
        this.door_status = initObj.door_status
      }
      else {
        this.door_status = '';
      }
      if (initObj.hasOwnProperty('cabin_presence_free')) {
        this.cabin_presence_free = initObj.cabin_presence_free
      }
      else {
        this.cabin_presence_free = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ElevatorState
    // Serialize message field [elevator_id]
    bufferOffset = _serializer.string(obj.elevator_id, buffer, bufferOffset);
    // Serialize message field [current_floor]
    bufferOffset = _serializer.int32(obj.current_floor, buffer, bufferOffset);
    // Serialize message field [target_floor]
    bufferOffset = _serializer.int32(obj.target_floor, buffer, bufferOffset);
    // Serialize message field [under_control]
    bufferOffset = _serializer.bool(obj.under_control, buffer, bufferOffset);
    // Serialize message field [master_id]
    bufferOffset = _serializer.string(obj.master_id, buffer, bufferOffset);
    // Serialize message field [elevator_status]
    bufferOffset = _serializer.string(obj.elevator_status, buffer, bufferOffset);
    // Serialize message field [door_status]
    bufferOffset = _serializer.string(obj.door_status, buffer, bufferOffset);
    // Serialize message field [cabin_presence_free]
    bufferOffset = _serializer.bool(obj.cabin_presence_free, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ElevatorState
    let len;
    let data = new ElevatorState(null);
    // Deserialize message field [elevator_id]
    data.elevator_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_floor]
    data.current_floor = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [target_floor]
    data.target_floor = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [under_control]
    data.under_control = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [master_id]
    data.master_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [elevator_status]
    data.elevator_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [door_status]
    data.door_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cabin_presence_free]
    data.cabin_presence_free = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.elevator_id);
    length += _getByteLength(object.master_id);
    length += _getByteLength(object.elevator_status);
    length += _getByteLength(object.door_status);
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotnik_elevator_interface_msgs/ElevatorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3531700245f9c96dbc860f08577c591f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ELEVATOR_STATUS_IDLE=idle
    string ELEVATOR_STATUS_UNKNOWN=unknown
    string ELEVATOR_STATUS_MOVING=moving
    
    string DOOR_STATUS_UNKNOWN=unknown
    string DOOR_STATUS_OPENING=opening
    string DOOR_STATUS_CLOSING=closing
    string DOOR_STATUS_CLOSE=close
    string DOOR_STATUS_OPEN=open
    
    string elevator_id
    
    int32 current_floor
    int32 target_floor
    # True if the elevator is under control
    bool under_control
    # id to identify who is controlling the elevator
    string master_id
    # elevator status
    string elevator_status
    # door status
    string door_status
    # flag active when no one is in the cabin
    bool cabin_presence_free
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ElevatorState(null);
    if (msg.elevator_id !== undefined) {
      resolved.elevator_id = msg.elevator_id;
    }
    else {
      resolved.elevator_id = ''
    }

    if (msg.current_floor !== undefined) {
      resolved.current_floor = msg.current_floor;
    }
    else {
      resolved.current_floor = 0
    }

    if (msg.target_floor !== undefined) {
      resolved.target_floor = msg.target_floor;
    }
    else {
      resolved.target_floor = 0
    }

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

    if (msg.elevator_status !== undefined) {
      resolved.elevator_status = msg.elevator_status;
    }
    else {
      resolved.elevator_status = ''
    }

    if (msg.door_status !== undefined) {
      resolved.door_status = msg.door_status;
    }
    else {
      resolved.door_status = ''
    }

    if (msg.cabin_presence_free !== undefined) {
      resolved.cabin_presence_free = msg.cabin_presence_free;
    }
    else {
      resolved.cabin_presence_free = false
    }

    return resolved;
    }
};

// Constants for message
ElevatorState.Constants = {
  ELEVATOR_STATUS_IDLE: 'idle',
  ELEVATOR_STATUS_UNKNOWN: 'unknown',
  ELEVATOR_STATUS_MOVING: 'moving',
  DOOR_STATUS_UNKNOWN: 'unknown',
  DOOR_STATUS_OPENING: 'opening',
  DOOR_STATUS_CLOSING: 'closing',
  DOOR_STATUS_CLOSE: 'close',
  DOOR_STATUS_OPEN: 'open',
}

module.exports = ElevatorState;
