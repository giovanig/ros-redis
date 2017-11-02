// Auto-generated. Do not edit!

// (in-package concert_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SoftwareInstance = require('./SoftwareInstance.js');

//-----------------------------------------------------------

class SoftwareInstances {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.instances = null;
    }
    else {
      if (initObj.hasOwnProperty('instances')) {
        this.instances = initObj.instances
      }
      else {
        this.instances = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SoftwareInstances
    // Serialize message field [instances]
    // Serialize the length for message field [instances]
    bufferOffset = _serializer.uint32(obj.instances.length, buffer, bufferOffset);
    obj.instances.forEach((val) => {
      bufferOffset = SoftwareInstance.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SoftwareInstances
    let len;
    let data = new SoftwareInstances(null);
    // Deserialize message field [instances]
    // Deserialize array length for message field [instances]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.instances = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.instances[i] = SoftwareInstance.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.instances.forEach((val) => {
      length += SoftwareInstance.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'concert_msgs/SoftwareInstances';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3db13b2ea7c2b945782f742cf7b4ac03';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SoftwareInstance[] instances
    
    ================================================================================
    MSG: concert_msgs/SoftwareInstance
    # Runtime
    string  resource_name
    string  name
    
    int16   max_count
    string  namespace
    string[] users
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
    const resolved = new SoftwareInstances(null);
    if (msg.instances !== undefined) {
      resolved.instances = new Array(msg.instances.length);
      for (let i = 0; i < resolved.instances.length; ++i) {
        resolved.instances[i] = SoftwareInstance.Resolve(msg.instances[i]);
      }
    }
    else {
      resolved.instances = []
    }

    return resolved;
    }
};

module.exports = SoftwareInstances;
