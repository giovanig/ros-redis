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

class RemoteAllRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gateway = null;
      this.blacklist = null;
      this.cancel = null;
    }
    else {
      if (initObj.hasOwnProperty('gateway')) {
        this.gateway = initObj.gateway
      }
      else {
        this.gateway = '';
      }
      if (initObj.hasOwnProperty('blacklist')) {
        this.blacklist = initObj.blacklist
      }
      else {
        this.blacklist = [];
      }
      if (initObj.hasOwnProperty('cancel')) {
        this.cancel = initObj.cancel
      }
      else {
        this.cancel = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoteAllRequest
    // Serialize message field [gateway]
    bufferOffset = _serializer.string(obj.gateway, buffer, bufferOffset);
    // Serialize message field [blacklist]
    // Serialize the length for message field [blacklist]
    bufferOffset = _serializer.uint32(obj.blacklist.length, buffer, bufferOffset);
    obj.blacklist.forEach((val) => {
      bufferOffset = Rule.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [cancel]
    bufferOffset = _serializer.bool(obj.cancel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoteAllRequest
    let len;
    let data = new RemoteAllRequest(null);
    // Deserialize message field [gateway]
    data.gateway = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [blacklist]
    // Deserialize array length for message field [blacklist]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.blacklist = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.blacklist[i] = Rule.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [cancel]
    data.cancel = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.gateway.length;
    object.blacklist.forEach((val) => {
      length += Rule.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gateway_msgs/RemoteAllRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '036fdb1a9946cb6fec17ef2d907450d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    string gateway
    
    
    Rule[] blacklist
    
    
    bool cancel
    
    
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
    const resolved = new RemoteAllRequest(null);
    if (msg.gateway !== undefined) {
      resolved.gateway = msg.gateway;
    }
    else {
      resolved.gateway = ''
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

    if (msg.cancel !== undefined) {
      resolved.cancel = msg.cancel;
    }
    else {
      resolved.cancel = false
    }

    return resolved;
    }
};

class RemoteAllResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.error_message = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoteAllResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int8(obj.result, buffer, bufferOffset);
    // Serialize message field [error_message]
    bufferOffset = _serializer.string(obj.error_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoteAllResponse
    let len;
    let data = new RemoteAllResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [error_message]
    data.error_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.error_message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gateway_msgs/RemoteAllResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb1e85ae0c5f4b1c31221493724cc5aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    int8 result
    string error_message
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RemoteAllResponse(null);
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

    return resolved;
    }
};

module.exports = {
  Request: RemoteAllRequest,
  Response: RemoteAllResponse,
  md5sum() { return 'dae39b2540424f9672db2c4f37b6394a'; },
  datatype() { return 'gateway_msgs/RemoteAll'; }
};
