// Auto-generated. Do not edit!

// (in-package concert_msgs.msg)


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
    return 'concert_msgs/ErrorCodes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '850c35c6305cee69bf981dadb8ebd51c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Error types for concert components
    
    # General
    int8 SUCCESS = 0
    
    # Concert Service
    int8 SERVICE_UNEXPECTED_ERROR = 31
    int8 SERVICE_INSUFFICIENT_CLIENTS = 32
    int8 SERVICE_NOT_READY = 33
    
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
  SERVICE_UNEXPECTED_ERROR: 31,
  SERVICE_INSUFFICIENT_CLIENTS: 32,
  SERVICE_NOT_READY: 33,
}

module.exports = ErrorCodes;
