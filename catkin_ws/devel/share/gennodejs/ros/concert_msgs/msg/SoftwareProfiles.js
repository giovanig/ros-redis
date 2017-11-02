// Auto-generated. Do not edit!

// (in-package concert_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SoftwareProfile = require('./SoftwareProfile.js');

//-----------------------------------------------------------

class SoftwareProfiles {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.profiles = null;
    }
    else {
      if (initObj.hasOwnProperty('profiles')) {
        this.profiles = initObj.profiles
      }
      else {
        this.profiles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SoftwareProfiles
    // Serialize message field [profiles]
    // Serialize the length for message field [profiles]
    bufferOffset = _serializer.uint32(obj.profiles.length, buffer, bufferOffset);
    obj.profiles.forEach((val) => {
      bufferOffset = SoftwareProfile.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SoftwareProfiles
    let len;
    let data = new SoftwareProfiles(null);
    // Deserialize message field [profiles]
    // Deserialize array length for message field [profiles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.profiles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.profiles[i] = SoftwareProfile.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.profiles.forEach((val) => {
      length += SoftwareProfile.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'concert_msgs/SoftwareProfiles';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b1749b57e354bf30f98c3179a4fff5d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SoftwareProfile[] profiles 
    
    ================================================================================
    MSG: concert_msgs/SoftwareProfile
    # Configurations
    string resource_name
    string name
    string description
    string author
    string launch
    int16  max_count
    rocon_std_msgs/KeyValue[] parameters
    
    ================================================================================
    MSG: rocon_std_msgs/KeyValue
    string key
    string value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SoftwareProfiles(null);
    if (msg.profiles !== undefined) {
      resolved.profiles = new Array(msg.profiles.length);
      for (let i = 0; i < resolved.profiles.length; ++i) {
        resolved.profiles[i] = SoftwareProfile.Resolve(msg.profiles[i]);
      }
    }
    else {
      resolved.profiles = []
    }

    return resolved;
    }
};

module.exports = SoftwareProfiles;
