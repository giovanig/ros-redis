// Auto-generated. Do not edit!

// (in-package gateway_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Rule = require('./Rule.js');

//-----------------------------------------------------------

class RemoteRule {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gateway = null;
      this.rule = null;
    }
    else {
      if (initObj.hasOwnProperty('gateway')) {
        this.gateway = initObj.gateway
      }
      else {
        this.gateway = '';
      }
      if (initObj.hasOwnProperty('rule')) {
        this.rule = initObj.rule
      }
      else {
        this.rule = new Rule();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoteRule
    // Serialize message field [gateway]
    bufferOffset = _serializer.string(obj.gateway, buffer, bufferOffset);
    // Serialize message field [rule]
    bufferOffset = Rule.serialize(obj.rule, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoteRule
    let len;
    let data = new RemoteRule(null);
    // Deserialize message field [gateway]
    data.gateway = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rule]
    data.rule = Rule.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.gateway.length;
    length += Rule.getMessageSize(object.rule);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gateway_msgs/RemoteRule';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '14f4c5aaf33b32b22c50fd514747f99f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new RemoteRule(null);
    if (msg.gateway !== undefined) {
      resolved.gateway = msg.gateway;
    }
    else {
      resolved.gateway = ''
    }

    if (msg.rule !== undefined) {
      resolved.rule = Rule.Resolve(msg.rule)
    }
    else {
      resolved.rule = new Rule()
    }

    return resolved;
    }
};

module.exports = RemoteRule;
