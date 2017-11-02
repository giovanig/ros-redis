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

class Constants {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Constants
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Constants
    let len;
    let data = new Constants(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_app_manager_msgs/Constants';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8dc55825f8d5b0d293568ddca66ef50f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Rapp manager is not getting controlled, and is thus, available.
    string NO_REMOTE_CONNECTION=none
    # An alias for the above
    string NO_REMOTE_CONTROLLER=none
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Constants(null);
    return resolved;
    }
};

// Constants for message
Constants.Constants = {
  NO_REMOTE_CONNECTION: 'none',
  NO_REMOTE_CONTROLLER: 'none',
}

module.exports = Constants;
