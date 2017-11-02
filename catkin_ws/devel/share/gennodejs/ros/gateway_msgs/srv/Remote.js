// Auto-generated. Do not edit!

// (in-package gateway_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RemoteRule = require('../msg/RemoteRule.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class RemoteRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.remotes = null;
      this.cancel = null;
    }
    else {
      if (initObj.hasOwnProperty('remotes')) {
        this.remotes = initObj.remotes
      }
      else {
        this.remotes = [];
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
    // Serializes a message object of type RemoteRequest
    // Serialize message field [remotes]
    // Serialize the length for message field [remotes]
    bufferOffset = _serializer.uint32(obj.remotes.length, buffer, bufferOffset);
    obj.remotes.forEach((val) => {
      bufferOffset = RemoteRule.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [cancel]
    bufferOffset = _serializer.bool(obj.cancel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoteRequest
    let len;
    let data = new RemoteRequest(null);
    // Deserialize message field [remotes]
    // Deserialize array length for message field [remotes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.remotes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.remotes[i] = RemoteRule.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [cancel]
    data.cancel = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.remotes.forEach((val) => {
      length += RemoteRule.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gateway_msgs/RemoteRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e9d79fdaee662b9f88ad5ffedb506465';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    RemoteRule[] remotes
    
    
    bool cancel
    
    
    ================================================================================
    MSG: gateway_msgs/RemoteRule
    # Definition for a flip. It represents either:
    #
    # 1) an existing flipped connection (from the local gateway)
    # 2) a rule that is put on a watchlist
    
    # The target recipient of the flip
    string gateway
    
    # Connection has the following parameters that need setting
    # - name : fully qualified name of the connection (str)
    # - type : connection type (str)
    #  
    # Use one of the types defined in Connection string constants:
    #     (publisher, subscriber, service, action_client, action_server)
    #
    # - node : name of the node it originates from (str)(optional)
    #
    # Node name is necessary, for instance, if you have multiple subscribers
    # publishing to a single topic. Most of the time it is not necessary,
    # but in some cases it helps refine the rule. It helps refine the rule.
    #
    Rule rule
    
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
    const resolved = new RemoteRequest(null);
    if (msg.remotes !== undefined) {
      resolved.remotes = new Array(msg.remotes.length);
      for (let i = 0; i < resolved.remotes.length; ++i) {
        resolved.remotes[i] = RemoteRule.Resolve(msg.remotes[i]);
      }
    }
    else {
      resolved.remotes = []
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

class RemoteResponse {
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
    // Serializes a message object of type RemoteResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int8(obj.result, buffer, bufferOffset);
    // Serialize message field [error_message]
    bufferOffset = _serializer.string(obj.error_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoteResponse
    let len;
    let data = new RemoteResponse(null);
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
    return 'gateway_msgs/RemoteResponse';
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
    const resolved = new RemoteResponse(null);
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
  Request: RemoteRequest,
  Response: RemoteResponse,
  md5sum() { return 'd2170021bdea1c8bfca632d3d43a6993'; },
  datatype() { return 'gateway_msgs/Remote'; }
};
