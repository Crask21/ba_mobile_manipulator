// Auto-generated. Do not edit!

// (in-package costmap_prohibition_layer.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GetProhibitedPointsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetProhibitedPointsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetProhibitedPointsRequest
    let len;
    let data = new GetProhibitedPointsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'costmap_prohibition_layer/GetProhibitedPointsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetProhibitedPointsRequest(null);
    return resolved;
    }
};

class GetProhibitedPointsResponse {
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
    // Serializes a message object of type GetProhibitedPointsResponse
    // Serialize message field [polygons]
    // Serialize the length for message field [polygons]
    bufferOffset = _serializer.uint32(obj.polygons.length, buffer, bufferOffset);
    obj.polygons.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Polygon.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetProhibitedPointsResponse
    let len;
    let data = new GetProhibitedPointsResponse(null);
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
    return 'costmap_prohibition_layer/GetProhibitedPointsResponse';
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
    const resolved = new GetProhibitedPointsResponse(null);
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

module.exports = {
  Request: GetProhibitedPointsRequest,
  Response: GetProhibitedPointsResponse,
  md5sum() { return 'e85019b57cf217e7d529d6333370e839'; },
  datatype() { return 'costmap_prohibition_layer/GetProhibitedPoints'; }
};
