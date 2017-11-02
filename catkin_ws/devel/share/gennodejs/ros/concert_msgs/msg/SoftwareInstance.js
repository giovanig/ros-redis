// Auto-generated. Do not edit!

// (in-package concert_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let rocon_std_msgs = _finder('rocon_std_msgs');

//-----------------------------------------------------------

class SoftwareInstance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resource_name = null;
      this.name = null;
      this.max_count = null;
      this.namespace = null;
      this.users = null;
      this.parameters = null;
    }
    else {
      if (initObj.hasOwnProperty('resource_name')) {
        this.resource_name = initObj.resource_name
      }
      else {
        this.resource_name = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('max_count')) {
        this.max_count = initObj.max_count
      }
      else {
        this.max_count = 0;
      }
      if (initObj.hasOwnProperty('namespace')) {
        this.namespace = initObj.namespace
      }
      else {
        this.namespace = '';
      }
      if (initObj.hasOwnProperty('users')) {
        this.users = initObj.users
      }
      else {
        this.users = [];
      }
      if (initObj.hasOwnProperty('parameters')) {
        this.parameters = initObj.parameters
      }
      else {
        this.parameters = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SoftwareInstance
    // Serialize message field [resource_name]
    bufferOffset = _serializer.string(obj.resource_name, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [max_count]
    bufferOffset = _serializer.int16(obj.max_count, buffer, bufferOffset);
    // Serialize message field [namespace]
    bufferOffset = _serializer.string(obj.namespace, buffer, bufferOffset);
    // Serialize message field [users]
    bufferOffset = _arraySerializer.string(obj.users, buffer, bufferOffset, null);
    // Serialize message field [parameters]
    // Serialize the length for message field [parameters]
    bufferOffset = _serializer.uint32(obj.parameters.length, buffer, bufferOffset);
    obj.parameters.forEach((val) => {
      bufferOffset = rocon_std_msgs.msg.KeyValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SoftwareInstance
    let len;
    let data = new SoftwareInstance(null);
    // Deserialize message field [resource_name]
    data.resource_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [max_count]
    data.max_count = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [namespace]
    data.namespace = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [users]
    data.users = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [parameters]
    // Deserialize array length for message field [parameters]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.parameters = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.parameters[i] = rocon_std_msgs.msg.KeyValue.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.resource_name.length;
    length += object.name.length;
    length += object.namespace.length;
    object.users.forEach((val) => {
      length += 4 + val.length;
    });
    object.parameters.forEach((val) => {
      length += rocon_std_msgs.msg.KeyValue.getMessageSize(val);
    });
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'concert_msgs/SoftwareInstance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd51f42200dcf594007d5fbba6c47cfe9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SoftwareInstance(null);
    if (msg.resource_name !== undefined) {
      resolved.resource_name = msg.resource_name;
    }
    else {
      resolved.resource_name = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.max_count !== undefined) {
      resolved.max_count = msg.max_count;
    }
    else {
      resolved.max_count = 0
    }

    if (msg.namespace !== undefined) {
      resolved.namespace = msg.namespace;
    }
    else {
      resolved.namespace = ''
    }

    if (msg.users !== undefined) {
      resolved.users = msg.users;
    }
    else {
      resolved.users = []
    }

    if (msg.parameters !== undefined) {
      resolved.parameters = new Array(msg.parameters.length);
      for (let i = 0; i < resolved.parameters.length; ++i) {
        resolved.parameters[i] = rocon_std_msgs.msg.KeyValue.Resolve(msg.parameters[i]);
      }
    }
    else {
      resolved.parameters = []
    }

    return resolved;
    }
};

module.exports = SoftwareInstance;
