// Auto-generated. Do not edit!

// (in-package rocon_interaction_msgs.msg)


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
    return 'rocon_interaction_msgs/ErrorCodes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '60cce08cdead9a60f088e024206793f8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Error types for interactions
    
    int8 SUCCESS = 0
    
    # Interaction errors
    int8 INTERACTION_UNAVAILABLE = 20    # The requested role-app pair is not available
    int8 INTERACTION_QUOTA_REACHED = 21  # Maximum number or role-app connections already reached 
    
    # Pairing errors
    int8 PAIRING_UNAVAILABLE          = 30
    int8 START_PAIRING_FAILED         = 31
    int8 ALREADY_PAIRING              = 32
    int8 REQUIRED_RAPP_IS_NOT_RUNNING = 33
    int8 DIFFERENT_RAPP_IS_RUNNING    = 34
    int8 NOT_PAIRING                  = 35
    int8 STOP_PAIRING_FAILED          = 36
    int8 REQUIRED_INTERACTION_IS_NOT_AVAILABLE = 37
    int8 REQUIRED_INTERACTION_FAILED  = 38
    
    string MSG_INTERACTION_UNAVAILABLE                  = This interaction is not available for use
    string MSG_PAIRING_UNAVAILABLE                      = The specified pairing does not exist
    string MSG_INTERACTION_QUOTA_REACHED                = More connections of this type not permitted
    string MSG_REQUIRED_RAPP_IS_NOT_RUNNING             = No rapp is running and this pairing interaction requires one to be
    string MSG_DIFFERENT_RAPP_IS_RUNNING                = A different rapp to that required is already running
    string MSG_START_PAIRING_FAILED                     = Failed to start the pairing (rapp)
    string MSG_STOP_PAIRING_FAILED                      = Failed to stop a pairing (rapp)
    string MSG_REQUIRED_INTERACTION_IS_NOT_AVAILABLE    = The required interaction is not available
    string MSG_REQUIRED_INTERACTION_FAILED              = The required interaction failed to start
    string MSG_ALREADY_PAIRING                          = Already pairing, cannot start another pairing
    string MSG_NOT_PAIRING                              = This interaction manager is not managing paired interactions
    
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
  INTERACTION_UNAVAILABLE: 20,
  INTERACTION_QUOTA_REACHED: 21,
  PAIRING_UNAVAILABLE: 30,
  START_PAIRING_FAILED: 31,
  ALREADY_PAIRING: 32,
  REQUIRED_RAPP_IS_NOT_RUNNING: 33,
  DIFFERENT_RAPP_IS_RUNNING: 34,
  NOT_PAIRING: 35,
  STOP_PAIRING_FAILED: 36,
  REQUIRED_INTERACTION_IS_NOT_AVAILABLE: 37,
  REQUIRED_INTERACTION_FAILED: 38,
  MSG_INTERACTION_UNAVAILABLE: 'This interaction is not available for use',
  MSG_PAIRING_UNAVAILABLE: 'The specified pairing does not exist',
  MSG_INTERACTION_QUOTA_REACHED: 'More connections of this type not permitted',
  MSG_REQUIRED_RAPP_IS_NOT_RUNNING: 'No rapp is running and this pairing interaction requires one to be',
  MSG_DIFFERENT_RAPP_IS_RUNNING: 'A different rapp to that required is already running',
  MSG_START_PAIRING_FAILED: 'Failed to start the pairing (rapp)',
  MSG_STOP_PAIRING_FAILED: 'Failed to stop a pairing (rapp)',
  MSG_REQUIRED_INTERACTION_IS_NOT_AVAILABLE: 'The required interaction is not available',
  MSG_REQUIRED_INTERACTION_FAILED: 'The required interaction failed to start',
  MSG_ALREADY_PAIRING: 'Already pairing, cannot start another pairing',
  MSG_NOT_PAIRING: 'This interaction manager is not managing paired interactions',
}

module.exports = ErrorCodes;
