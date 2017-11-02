// Auto-generated. Do not edit!

// (in-package rocon_app_manager_msgs.msg)


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
    return 'rocon_app_manager_msgs/ErrorCodes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cec38b743e8d5698477f7be4d8bfebb8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Error types for the rocon app manager
    
    # General
    int8 SUCCESS = 0
    int8 UNKNOWN = 1
    
    # Start
    int8 MULTI_RAPP_NOT_SUPPORTED = 10
    
    # Stop Rapp
    int8 RAPP_IS_NOT_RUNNING = 20
    int8 RAPP_IS_NOT_AVAILABLE = 21
    
    # Invitations
    int8 LOCAL_INVITATIONS_ONLY = 30
    int8 NO_LOCAL_GATEWAY = 31
    int8 ALREADY_REMOTE_CONTROLLED = 32
    int8 NOT_CURRENT_REMOTE_CONTROLLER = 33
    int8 INVITING_CONTROLLER_NOT_WHITELISTED = 34
    int8 INVITING_CONTROLLER_BLACKLISTED = 35
    int8 CLIENT_CONNECTION_DISRUPTED = 36
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
  UNKNOWN: 1,
  MULTI_RAPP_NOT_SUPPORTED: 10,
  RAPP_IS_NOT_RUNNING: 20,
  RAPP_IS_NOT_AVAILABLE: 21,
  LOCAL_INVITATIONS_ONLY: 30,
  NO_LOCAL_GATEWAY: 31,
  ALREADY_REMOTE_CONTROLLED: 32,
  NOT_CURRENT_REMOTE_CONTROLLER: 33,
  INVITING_CONTROLLER_NOT_WHITELISTED: 34,
  INVITING_CONTROLLER_BLACKLISTED: 35,
  CLIENT_CONNECTION_DISRUPTED: 36,
}

module.exports = ErrorCodes;
