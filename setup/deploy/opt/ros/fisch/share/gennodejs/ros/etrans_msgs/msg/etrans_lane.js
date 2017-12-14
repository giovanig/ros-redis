// Auto-generated. Do not edit!

// (in-package etrans_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let etrans_latlon = require('./etrans_latlon.js');

//-----------------------------------------------------------

class etrans_lane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ID = null;
      this.centerpoints = null;
    }
    else {
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
      if (initObj.hasOwnProperty('centerpoints')) {
        this.centerpoints = initObj.centerpoints
      }
      else {
        this.centerpoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type etrans_lane
    // Serialize message field [ID]
    bufferOffset = _serializer.uint32(obj.ID, buffer, bufferOffset);
    // Serialize message field [centerpoints]
    // Serialize the length for message field [centerpoints]
    bufferOffset = _serializer.uint32(obj.centerpoints.length, buffer, bufferOffset);
    obj.centerpoints.forEach((val) => {
      bufferOffset = etrans_latlon.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type etrans_lane
    let len;
    let data = new etrans_lane(null);
    // Deserialize message field [ID]
    data.ID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [centerpoints]
    // Deserialize array length for message field [centerpoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.centerpoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.centerpoints[i] = etrans_latlon.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 16 * object.centerpoints.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etrans_msgs/etrans_lane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'af8c9fbac78c2f807829637ebfead832';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 ID
    etrans_msgs/etrans_latlon[] centerpoints
    ================================================================================
    MSG: etrans_msgs/etrans_latlon
    float64 latitude
    float64 longitude
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new etrans_lane(null);
    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    if (msg.centerpoints !== undefined) {
      resolved.centerpoints = new Array(msg.centerpoints.length);
      for (let i = 0; i < resolved.centerpoints.length; ++i) {
        resolved.centerpoints[i] = etrans_latlon.Resolve(msg.centerpoints[i]);
      }
    }
    else {
      resolved.centerpoints = []
    }

    return resolved;
    }
};

module.exports = etrans_lane;
