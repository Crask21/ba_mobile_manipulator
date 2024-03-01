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

class AddProhibitedPointsRequest {
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
        this.polygons = new geometry_msgs.msg.Polygon();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddProhibitedPointsRequest
    // Serialize message field [polygons]
    bufferOffset = geometry_msgs.msg.Polygon.serialize(obj.polygons, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddProhibitedPointsRequest
    let len;
    let data = new AddProhibitedPointsRequest(null);
    // Deserialize message field [polygons]
    data.polygons = geometry_msgs.msg.Polygon.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.Polygon.getMessageSize(object.polygons);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'costmap_prohibition_layer/AddProhibitedPointsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e85019b57cf217e7d529d6333370e839';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Polygon polygons
    
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
    const resolved = new AddProhibitedPointsRequest(null);
    if (msg.polygons !== undefined) {
      resolved.polygons = geometry_msgs.msg.Polygon.Resolve(msg.polygons)
    }
    else {
      resolved.polygons = new geometry_msgs.msg.Polygon()
    }

    return resolved;
    }
};

class AddProhibitedPointsResponse {
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
    // Serializes a message object of type AddProhibitedPointsResponse
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddProhibitedPointsResponse
    let len;
    let data = new AddProhibitedPointsResponse(null);
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
    return 'costmap_prohibition_layer/AddProhibitedPointsResponse';
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
    const resolved = new AddProhibitedPointsResponse(null);
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
  Request: AddProhibitedPointsRequest,
  Response: AddProhibitedPointsResponse,
  md5sum() { return 'd58bd181a40e77cd6f8dfb61f5bc4f85'; },
  datatype() { return 'costmap_prohibition_layer/AddProhibitedPoints'; }
};
