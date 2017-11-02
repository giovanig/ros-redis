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

class IncompatibleRappList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.blacklisted_rapps = null;
      this.non_whitelisted_rapps = null;
      this.platform_incompatible_rapps = null;
      this.capabilities_incompatible_rapps = null;
    }
    else {
      if (initObj.hasOwnProperty('blacklisted_rapps')) {
        this.blacklisted_rapps = initObj.blacklisted_rapps
      }
      else {
        this.blacklisted_rapps = [];
      }
      if (initObj.hasOwnProperty('non_whitelisted_rapps')) {
        this.non_whitelisted_rapps = initObj.non_whitelisted_rapps
      }
      else {
        this.non_whitelisted_rapps = [];
      }
      if (initObj.hasOwnProperty('platform_incompatible_rapps')) {
        this.platform_incompatible_rapps = initObj.platform_incompatible_rapps
      }
      else {
        this.platform_incompatible_rapps = [];
      }
      if (initObj.hasOwnProperty('capabilities_incompatible_rapps')) {
        this.capabilities_incompatible_rapps = initObj.capabilities_incompatible_rapps
      }
      else {
        this.capabilities_incompatible_rapps = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IncompatibleRappList
    // Serialize message field [blacklisted_rapps]
    bufferOffset = _arraySerializer.string(obj.blacklisted_rapps, buffer, bufferOffset, null);
    // Serialize message field [non_whitelisted_rapps]
    bufferOffset = _arraySerializer.string(obj.non_whitelisted_rapps, buffer, bufferOffset, null);
    // Serialize message field [platform_incompatible_rapps]
    bufferOffset = _arraySerializer.string(obj.platform_incompatible_rapps, buffer, bufferOffset, null);
    // Serialize message field [capabilities_incompatible_rapps]
    bufferOffset = _arraySerializer.string(obj.capabilities_incompatible_rapps, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IncompatibleRappList
    let len;
    let data = new IncompatibleRappList(null);
    // Deserialize message field [blacklisted_rapps]
    data.blacklisted_rapps = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [non_whitelisted_rapps]
    data.non_whitelisted_rapps = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [platform_incompatible_rapps]
    data.platform_incompatible_rapps = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [capabilities_incompatible_rapps]
    data.capabilities_incompatible_rapps = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.blacklisted_rapps.forEach((val) => {
      length += 4 + val.length;
    });
    object.non_whitelisted_rapps.forEach((val) => {
      length += 4 + val.length;
    });
    object.platform_incompatible_rapps.forEach((val) => {
      length += 4 + val.length;
    });
    object.capabilities_incompatible_rapps.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_app_manager_msgs/IncompatibleRappList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8b60bc2510b0df387f6623f3db3a079';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # List all apps which were filtered for some reason or another
    
    string[] blacklisted_rapps
    string[] non_whitelisted_rapps
    string[] platform_incompatible_rapps
    string[] capabilities_incompatible_rapps
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IncompatibleRappList(null);
    if (msg.blacklisted_rapps !== undefined) {
      resolved.blacklisted_rapps = msg.blacklisted_rapps;
    }
    else {
      resolved.blacklisted_rapps = []
    }

    if (msg.non_whitelisted_rapps !== undefined) {
      resolved.non_whitelisted_rapps = msg.non_whitelisted_rapps;
    }
    else {
      resolved.non_whitelisted_rapps = []
    }

    if (msg.platform_incompatible_rapps !== undefined) {
      resolved.platform_incompatible_rapps = msg.platform_incompatible_rapps;
    }
    else {
      resolved.platform_incompatible_rapps = []
    }

    if (msg.capabilities_incompatible_rapps !== undefined) {
      resolved.capabilities_incompatible_rapps = msg.capabilities_incompatible_rapps;
    }
    else {
      resolved.capabilities_incompatible_rapps = []
    }

    return resolved;
    }
};

module.exports = IncompatibleRappList;
