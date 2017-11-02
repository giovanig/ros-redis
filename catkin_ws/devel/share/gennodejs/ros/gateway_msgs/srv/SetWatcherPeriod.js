// Auto-generated. Do not edit!

// (in-package gateway_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetWatcherPeriodRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.period = null;
    }
    else {
      if (initObj.hasOwnProperty('period')) {
        this.period = initObj.period
      }
      else {
        this.period = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetWatcherPeriodRequest
    // Serialize message field [period]
    bufferOffset = _serializer.float32(obj.period, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetWatcherPeriodRequest
    let len;
    let data = new SetWatcherPeriodRequest(null);
    // Deserialize message field [period]
    data.period = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gateway_msgs/SetWatcherPeriodRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3bfcf350fbd9f1aad223e564a8c1f0dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    float32 period
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetWatcherPeriodRequest(null);
    if (msg.period !== undefined) {
      resolved.period = msg.period;
    }
    else {
      resolved.period = 0.0
    }

    return resolved;
    }
};

class SetWatcherPeriodResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.last_period = null;
    }
    else {
      if (initObj.hasOwnProperty('last_period')) {
        this.last_period = initObj.last_period
      }
      else {
        this.last_period = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetWatcherPeriodResponse
    // Serialize message field [last_period]
    bufferOffset = _serializer.float32(obj.last_period, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetWatcherPeriodResponse
    let len;
    let data = new SetWatcherPeriodResponse(null);
    // Deserialize message field [last_period]
    data.last_period = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gateway_msgs/SetWatcherPeriodResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dbc70bcb9b617c59da49b8be04454dd5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float32 last_period
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetWatcherPeriodResponse(null);
    if (msg.last_period !== undefined) {
      resolved.last_period = msg.last_period;
    }
    else {
      resolved.last_period = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: SetWatcherPeriodRequest,
  Response: SetWatcherPeriodResponse,
  md5sum() { return '48c82bd734fbc66058cd96447a09fe59'; },
  datatype() { return 'gateway_msgs/SetWatcherPeriod'; }
};
