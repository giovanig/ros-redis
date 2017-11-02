// Auto-generated. Do not edit!

// (in-package rocon_std_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ConnectionCacheSpin {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.spin_freq = null;
      this.spin_timer = null;
    }
    else {
      if (initObj.hasOwnProperty('spin_freq')) {
        this.spin_freq = initObj.spin_freq
      }
      else {
        this.spin_freq = 0.0;
      }
      if (initObj.hasOwnProperty('spin_timer')) {
        this.spin_timer = initObj.spin_timer
      }
      else {
        this.spin_timer = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConnectionCacheSpin
    // Serialize message field [spin_freq]
    bufferOffset = _serializer.float32(obj.spin_freq, buffer, bufferOffset);
    // Serialize message field [spin_timer]
    bufferOffset = _serializer.float32(obj.spin_timer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConnectionCacheSpin
    let len;
    let data = new ConnectionCacheSpin(null);
    // Deserialize message field [spin_freq]
    data.spin_freq = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [spin_timer]
    data.spin_timer = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_std_msgs/ConnectionCacheSpin';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6c0b0ddb1d2a2de9918dc5f6d87680a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 spin_freq  # Hz
    float32 spin_timer  # > 0 means spin_freq is a temporary spin up. ==0 means spin_freq is the base spin frequency
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConnectionCacheSpin(null);
    if (msg.spin_freq !== undefined) {
      resolved.spin_freq = msg.spin_freq;
    }
    else {
      resolved.spin_freq = 0.0
    }

    if (msg.spin_timer !== undefined) {
      resolved.spin_timer = msg.spin_timer;
    }
    else {
      resolved.spin_timer = 0.0
    }

    return resolved;
    }
};

module.exports = ConnectionCacheSpin;
