// Auto-generated. Do not edit!

// (in-package etrans_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class etrans_light {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.signal_group = null;
      this.time_to_change = null;
      this.latitude = null;
      this.longitude = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('signal_group')) {
        this.signal_group = initObj.signal_group
      }
      else {
        this.signal_group = 0;
      }
      if (initObj.hasOwnProperty('time_to_change')) {
        this.time_to_change = initObj.time_to_change
      }
      else {
        this.time_to_change = 0.0;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type etrans_light
    // Serialize message field [state]
    bufferOffset = _serializer.int8(obj.state, buffer, bufferOffset);
    // Serialize message field [signal_group]
    bufferOffset = _serializer.uint32(obj.signal_group, buffer, bufferOffset);
    // Serialize message field [time_to_change]
    bufferOffset = _serializer.float64(obj.time_to_change, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type etrans_light
    let len;
    let data = new etrans_light(null);
    // Deserialize message field [state]
    data.state = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [signal_group]
    data.signal_group = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [time_to_change]
    data.time_to_change = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etrans_msgs/etrans_light';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c32da18cf5c5b5fc7fb74eb7e7860ee2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 state
    uint32 signal_group
    float64 time_to_change
    float64 latitude
    float64 longitude
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new etrans_light(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.signal_group !== undefined) {
      resolved.signal_group = msg.signal_group;
    }
    else {
      resolved.signal_group = 0
    }

    if (msg.time_to_change !== undefined) {
      resolved.time_to_change = msg.time_to_change;
    }
    else {
      resolved.time_to_change = 0.0
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    return resolved;
    }
};

module.exports = etrans_light;
