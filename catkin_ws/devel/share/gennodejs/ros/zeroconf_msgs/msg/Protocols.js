// Auto-generated. Do not edit!

// (in-package zeroconf_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Protocols {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Protocols
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Protocols
    let len;
    let data = new Protocols(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zeroconf_msgs/Protocols';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e173730dc50e42e6497a38ee52e9e4d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # Protocol definitions used by all zeroconf messages and services.
    
    int8 UNSPECIFIED = 0
    int8 IPV4 = 1
    int8 IPV6 = 2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Protocols(null);
    return resolved;
    }
};

// Constants for message
Protocols.Constants = {
  UNSPECIFIED: 0,
  IPV4: 1,
  IPV6: 2,
}

module.exports = Protocols;
