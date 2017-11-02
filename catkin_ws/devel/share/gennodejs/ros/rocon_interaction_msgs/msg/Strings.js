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

class Strings {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Strings
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Strings
    let len;
    let data = new Strings(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_interaction_msgs/Strings';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7279ef1b62bbde7b3bec17766ef2c127';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Strings that are constant with respect to the entire concert. Listing them here
    # allows every user to automatically update if there are any refactorings. Avoid
    # hardcoding these here if possible (see concert_msgs.Strings for a good rant).
    
    # Namespaces
    
    string REMOCONS_NAMESPACE = /remocons
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Strings(null);
    return resolved;
    }
};

// Constants for message
Strings.Constants = {
  REMOCONS_NAMESPACE: '/remocons',
}

module.exports = Strings;
