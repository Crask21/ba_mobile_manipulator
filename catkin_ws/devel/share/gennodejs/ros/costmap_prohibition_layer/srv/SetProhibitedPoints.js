// Auto-generated. Do not edit!

// (in-package costmap_prohibition_layer.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetProhibitedPointsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.polygons = null;
    }
    else {
      if (initObj.hasOwnProperty('polygons')) {
        this.polygons = initObj.polygons
      }
      else {
        this.polygons = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetProhibitedPointsRequest
    // Serialize message field [polygons]
    // Serialize the length for message field [polygons]
    bufferOffset = _serializer.uint32(obj.polygons.length, buffer, bufferOffset);
    obj.polygons.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Polygon.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetProhibitedPointsRequest
    let len;
    let data = new SetProhibitedPointsRequest(null);
    // Deserialize message field [polygons]
    // Deserialize array length for message field [polygons]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.polygons = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.polygons[i] = geometry_msgs.msg.Polygon.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.polygons.forEach((val) => {
      length += geometry_msgs.msg.Polygon.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'costmap_prohibition_layer/SetProhibitedPointsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e85019b57cf217e7d529d6333370e839';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Polygon[] polygons
    
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
    const resolved = new SetProhibitedPointsRequest(null);
    if (msg.polygons !== undefined) {
      resolved.polygons = new Array(msg.polygons.length);
      for (let i = 0; i < resolved.polygons.length; ++i) {
        resolved.polygons[i] = geometry_msgs.msg.Polygon.Resolve(msg.polygons[i]);
      }
    }
    else {
      resolved.polygons = []
    }

    return resolved;
    }
};

class SetProhibitedPointsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msg = null;
    }
    else {
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetProhibitedPointsResponse
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetProhibitedPointsResponse
    let len;
    let data = new SetProhibitedPointsResponse(null);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.msg);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'costmap_prohibition_layer/SetProhibitedPointsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7d96ed730776804754140b85e64c862e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string msg
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetProhibitedPointsResponse(null);
    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SetProhibitedPointsRequest,
  Response: SetProhibitedPointsResponse,
  md5sum() { return 'd58bd181a40e77cd6f8dfb61f5bc4f85'; },
  datatype() { return 'costmap_prohibition_layer/SetProhibitedPoints'; }
};
