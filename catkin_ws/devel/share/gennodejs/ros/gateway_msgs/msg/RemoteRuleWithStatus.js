// Auto-generated. Do not edit!

// (in-package gateway_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RemoteRule = require('./RemoteRule.js');

//-----------------------------------------------------------

class RemoteRuleWithStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.remote_rule = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('remote_rule')) {
        this.remote_rule = initObj.remote_rule
      }
      else {
        this.remote_rule = new RemoteRule();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoteRuleWithStatus
    // Serialize message field [remote_rule]
    bufferOffset = RemoteRule.serialize(obj.remote_rule, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoteRuleWithStatus
    let len;
    let data = new RemoteRuleWithStatus(null);
    // Deserialize message field [remote_rule]
    data.remote_rule = RemoteRule.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += RemoteRule.getMessageSize(object.remote_rule);
    length += object.status.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gateway_msgs/RemoteRuleWithStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7892d8834068a87e345fff91adc26a5e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The remote rule whose status is being defined here
    RemoteRule remote_rule
    
    # Whether the flip is still pending, was accepted 
    string UNKNOWN=unknown
    string PENDING=pending
    string ACCEPTED=accepted
    string BLOCKED=blocked
    string RESEND=resend
    string status
    
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
    const resolved = new RemoteRuleWithStatus(null);
    if (msg.remote_rule !== undefined) {
      resolved.remote_rule = RemoteRule.Resolve(msg.remote_rule)
    }
    else {
      resolved.remote_rule = new RemoteRule()
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    return resolved;
    }
};

// Constants for message
RemoteRuleWithStatus.Constants = {
  UNKNOWN: 'unknown',
  PENDING: 'pending',
  ACCEPTED: 'accepted',
  BLOCKED: 'blocked',
  RESEND: 'resend',
}

module.exports = RemoteRuleWithStatus;
