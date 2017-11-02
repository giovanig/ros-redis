// Auto-generated. Do not edit!

// (in-package gateway_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Rule = require('../msg/Rule.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class AdvertiseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cancel = null;
      this.rules = null;
    }
    else {
      if (initObj.hasOwnProperty('cancel')) {
        this.cancel = initObj.cancel
      }
      else {
        this.cancel = false;
      }
      if (initObj.hasOwnProperty('rules')) {
        this.rules = initObj.rules
      }
      else {
        this.rules = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AdvertiseRequest
    // Serialize message field [cancel]
    bufferOffset = _serializer.bool(obj.cancel, buffer, bufferOffset);
    // Serialize message field [rules]
    // Serialize the length for message field [rules]
    bufferOffset = _serializer.uint32(obj.rules.length, buffer, bufferOffset);
    obj.rules.forEach((val) => {
      bufferOffset = Rule.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AdvertiseRequest
    let len;
    let data = new AdvertiseRequest(null);
    // Deserialize message field [cancel]
    data.cancel = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rules]
    // Deserialize array length for message field [rules]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.rules = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.rules[i] = Rule.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.rules.forEach((val) => {
      length += Rule.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gateway_msgs/AdvertiseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85ef604243258e1594c5a7401f5e0339';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool cancel
    Rule[] rules
    
    
    ================================================================================
    MSG: gateway_msgs/Rule
    # Standard gateway connection rule
    
    # type of connection (from gateway_msgs.msg.Connection)
    string type
    
    # this is the topic/service name or the action base name (a regex is supported)
    string name 
    
    # (optional) an optional node name can be provided. if node name is not provided
    # then all nodes are matched (also supports regex)
    string node
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AdvertiseRequest(null);
    if (msg.cancel !== undefined) {
      resolved.cancel = msg.cancel;
    }
    else {
      resolved.cancel = false
    }

    if (msg.rules !== undefined) {
      resolved.rules = new Array(msg.rules.length);
      for (let i = 0; i < resolved.rules.length; ++i) {
        resolved.rules[i] = Rule.Resolve(msg.rules[i]);
      }
    }
    else {
      resolved.rules = []
    }

    return resolved;
    }
};

class AdvertiseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.error_message = null;
      this.watchlist = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('error_message')) {
        this.error_message = initObj.error_message
      }
      else {
        this.error_message = '';
      }
      if (initObj.hasOwnProperty('watchlist')) {
        this.watchlist = initObj.watchlist
      }
      else {
        this.watchlist = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AdvertiseResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int8(obj.result, buffer, bufferOffset);
    // Serialize message field [error_message]
    bufferOffset = _serializer.string(obj.error_message, buffer, bufferOffset);
    // Serialize message field [watchlist]
    // Serialize the length for message field [watchlist]
    bufferOffset = _serializer.uint32(obj.watchlist.length, buffer, bufferOffset);
    obj.watchlist.forEach((val) => {
      bufferOffset = Rule.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AdvertiseResponse
    let len;
    let data = new AdvertiseResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [error_message]
    data.error_message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [watchlist]
    // Deserialize array length for message field [watchlist]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.watchlist = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.watchlist[i] = Rule.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.error_message.length;
    object.watchlist.forEach((val) => {
      length += Rule.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gateway_msgs/AdvertiseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c389af2721ca403446acba93862aff4f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    int8 result
    string error_message
    
    Rule[] watchlist
    
    
    ================================================================================
    MSG: gateway_msgs/Rule
    # Standard gateway connection rule
    
    # type of connection (from gateway_msgs.msg.Connection)
    string type
    
    # this is the topic/service name or the action base name (a regex is supported)
    string name 
    
    # (optional) an optional node name can be provided. if node name is not provided
    # then all nodes are matched (also supports regex)
    string node
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AdvertiseResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.error_message !== undefined) {
      resolved.error_message = msg.error_message;
    }
    else {
      resolved.error_message = ''
    }

    if (msg.watchlist !== undefined) {
      resolved.watchlist = new Array(msg.watchlist.length);
      for (let i = 0; i < resolved.watchlist.length; ++i) {
        resolved.watchlist[i] = Rule.Resolve(msg.watchlist[i]);
      }
    }
    else {
      resolved.watchlist = []
    }

    return resolved;
    }
};

module.exports = {
  Request: AdvertiseRequest,
  Response: AdvertiseResponse,
  md5sum() { return '394a2b6787bc0694573ae81a1842f14b'; },
  datatype() { return 'gateway_msgs/Advertise'; }
};
