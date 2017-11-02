// Auto-generated. Do not edit!

// (in-package gateway_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ErrorCodes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ErrorCodes
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ErrorCodes
    let len;
    let data = new ErrorCodes(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gateway_msgs/ErrorCodes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cc2f69c68d11f625f99f07d82c572d47';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Error types for the gateway ros api
    
    # General
    int8 SUCCESS = 0
    int8 NO_HUB_CONNECTION = 1
    
    # Hub
    int8 HUB_CONNECTION_ALREADY_EXISTS = 11
    int8 HUB_CONNECTION_UNRESOLVABLE = 12
    int8 HUB_CONNECTION_BLACKLISTED = 13
    int8 HUB_CONNECTION_FAILED = 14
    int8 HUB_CONNECTION_NOT_IN_NONEMPTY_WHITELIST = 15
    int8 HUB_NAME_NOT_FOUND = 16
    int8 HUB_CONNECTION_LOST = 17
    int8 HUB_UNKNOWN_ERROR = 19
    
    # Flipping
    int8 FLIP_RULE_ALREADY_EXISTS = 22
    int8 FLIP_PATTERN_ALREDY_EXISTS = 23
    int8 FLIP_REMOTE_GATEWAY_FIREWALLING = 24
    
    # Advertise
    int8 ADVERTISEMENT_EXISTS = 31
    int8 ADVERTISEMENT_NOT_FOUND = 32
    int8 UNKNOWN_ADVERTISEMENT_ERROR = 39
    
    # Pulling
    int8 PULL_RULE_ALREADY_EXISTS = 41
    
    # Remotes
    int8 REMOTE_GATEWAY_NOT_VISIBLE = 51
    int8 REMOTE_GATEWAY_SELF_IS_NOT = 52
    int8 REMOTE_GATEWAY_TARGET_HAS_MULTIPLE_MATCHES = 53
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ErrorCodes(null);
    return resolved;
    }
};

// Constants for message
ErrorCodes.Constants = {
  SUCCESS: 0,
  NO_HUB_CONNECTION: 1,
  HUB_CONNECTION_ALREADY_EXISTS: 11,
  HUB_CONNECTION_UNRESOLVABLE: 12,
  HUB_CONNECTION_BLACKLISTED: 13,
  HUB_CONNECTION_FAILED: 14,
  HUB_CONNECTION_NOT_IN_NONEMPTY_WHITELIST: 15,
  HUB_NAME_NOT_FOUND: 16,
  HUB_CONNECTION_LOST: 17,
  HUB_UNKNOWN_ERROR: 19,
  FLIP_RULE_ALREADY_EXISTS: 22,
  FLIP_PATTERN_ALREDY_EXISTS: 23,
  FLIP_REMOTE_GATEWAY_FIREWALLING: 24,
  ADVERTISEMENT_EXISTS: 31,
  ADVERTISEMENT_NOT_FOUND: 32,
  UNKNOWN_ADVERTISEMENT_ERROR: 39,
  PULL_RULE_ALREADY_EXISTS: 41,
  REMOTE_GATEWAY_NOT_VISIBLE: 51,
  REMOTE_GATEWAY_SELF_IS_NOT: 52,
  REMOTE_GATEWAY_TARGET_HAS_MULTIPLE_MATCHES: 53,
}

module.exports = ErrorCodes;
