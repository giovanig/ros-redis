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

class AdvertiseAllRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cancel = null;
      this.blacklist = null;
    }
    else {
      if (initObj.hasOwnProperty('cancel')) {
        this.cancel = initObj.cancel
      }
      else {
        this.cancel = false;
      }
      if (initObj.hasOwnProperty('blacklist')) {
        this.blacklist = initObj.blacklist
      }
      else {
        this.blacklist = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AdvertiseAllRequest
    // Serialize message field [cancel]
    bufferOffset = _serializer.bool(obj.cancel, buffer, bufferOffset);
    // Serialize message field [blacklist]
    // Serialize the length for message field [blacklist]
    bufferOffset = _serializer.uint32(obj.blacklist.length, buffer, bufferOffset);
    obj.blacklist.forEach((val) => {
      bufferOffset = Rule.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AdvertiseAllRequest
    let len;
    let data = new AdvertiseAllRequest(null);
    // Deserialize message field [cancel]
    data.cancel = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [blacklist]
    // Deserialize array length for message field [blacklist]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.blacklist = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.blacklist[i] = Rule.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.blacklist.forEach((val) => {
      length += Rule.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gateway_msgs/AdvertiseAllRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b9886afdbeb585f0929f1fe1334dd03e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool cancel
    Rule[] blacklist
    
    
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
    const resolved = new AdvertiseAllRequest(null);
    if (msg.cancel !== undefined) {
      resolved.cancel = msg.cancel;
    }
    else {
      resolved.cancel = false
    }

    if (msg.blacklist !== undefined) {
      resolved.blacklist = new Array(msg.blacklist.length);
      for (let i = 0; i < resolved.blacklist.length; ++i) {
        resolved.blacklist[i] = Rule.Resolve(msg.blacklist[i]);
      }
    }
    else {
      resolved.blacklist = []
    }

    return resolved;
    }
};

class AdvertiseAllResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.error_message = null;
      this.blacklist = null;
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
      if (initObj.hasOwnProperty('blacklist')) {
        this.blacklist = initObj.blacklist
      }
      else {
        this.blacklist = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AdvertiseAllResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int8(obj.result, buffer, bufferOffset);
    // Serialize message field [error_message]
    bufferOffset = _serializer.string(obj.error_message, buffer, bufferOffset);
    // Serialize message field [blacklist]
    // Serialize the length for message field [blacklist]
    bufferOffset = _serializer.uint32(obj.blacklist.length, buffer, bufferOffset);
    obj.blacklist.forEach((val) => {
      bufferOffset = Rule.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AdvertiseAllResponse
    let len;
    let data = new AdvertiseAllResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [error_message]
    data.error_message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [blacklist]
    // Deserialize array length for message field [blacklist]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.blacklist = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.blacklist[i] = Rule.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.error_message.length;
    object.blacklist.forEach((val) => {
      length += Rule.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gateway_msgs/AdvertiseAllResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd9c8370d5d4ea835b3dd7ba52feee140';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    int8 result
    string error_message
    
    Rule[] blacklist
    
    
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
    const resolved = new AdvertiseAllResponse(null);
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

    if (msg.blacklist !== undefined) {
      resolved.blacklist = new Array(msg.blacklist.length);
      for (let i = 0; i < resolved.blacklist.length; ++i) {
        resolved.blacklist[i] = Rule.Resolve(msg.blacklist[i]);
      }
    }
    else {
      resolved.blacklist = []
    }

    return resolved;
    }
};

module.exports = {
  Request: AdvertiseAllRequest,
  Response: AdvertiseAllResponse,
  md5sum() { return '51a5c6982ba636b1397142aab7eb86e6'; },
  datatype() { return 'gateway_msgs/AdvertiseAll'; }
};
