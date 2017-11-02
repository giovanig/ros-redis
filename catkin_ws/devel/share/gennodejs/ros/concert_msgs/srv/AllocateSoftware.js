// Auto-generated. Do not edit!

// (in-package concert_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let rocon_std_msgs = _finder('rocon_std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class AllocateSoftwareRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.user = null;
      this.software = null;
      this.allocate = null;
      this.parameters = null;
    }
    else {
      if (initObj.hasOwnProperty('user')) {
        this.user = initObj.user
      }
      else {
        this.user = '';
      }
      if (initObj.hasOwnProperty('software')) {
        this.software = initObj.software
      }
      else {
        this.software = '';
      }
      if (initObj.hasOwnProperty('allocate')) {
        this.allocate = initObj.allocate
      }
      else {
        this.allocate = false;
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
    // Serializes a message object of type AllocateSoftwareRequest
    // Serialize message field [user]
    bufferOffset = _serializer.string(obj.user, buffer, bufferOffset);
    // Serialize message field [software]
    bufferOffset = _serializer.string(obj.software, buffer, bufferOffset);
    // Serialize message field [allocate]
    bufferOffset = _serializer.bool(obj.allocate, buffer, bufferOffset);
    // Serialize message field [parameters]
    // Serialize the length for message field [parameters]
    bufferOffset = _serializer.uint32(obj.parameters.length, buffer, bufferOffset);
    obj.parameters.forEach((val) => {
      bufferOffset = rocon_std_msgs.msg.KeyValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AllocateSoftwareRequest
    let len;
    let data = new AllocateSoftwareRequest(null);
    // Deserialize message field [user]
    data.user = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [software]
    data.software = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [allocate]
    data.allocate = _deserializer.bool(buffer, bufferOffset);
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
    length += object.user.length;
    length += object.software.length;
    object.parameters.forEach((val) => {
      length += rocon_std_msgs.msg.KeyValue.getMessageSize(val);
    });
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'concert_msgs/AllocateSoftwareRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f1b14f8151c193001d66c288668a7a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string user
    string software
    bool allocate
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
    const resolved = new AllocateSoftwareRequest(null);
    if (msg.user !== undefined) {
      resolved.user = msg.user;
    }
    else {
      resolved.user = ''
    }

    if (msg.software !== undefined) {
      resolved.software = msg.software;
    }
    else {
      resolved.software = ''
    }

    if (msg.allocate !== undefined) {
      resolved.allocate = msg.allocate;
    }
    else {
      resolved.allocate = false
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

class AllocateSoftwareResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.parameters = null;
      this.namespace = null;
      this.error_message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('parameters')) {
        this.parameters = initObj.parameters
      }
      else {
        this.parameters = [];
      }
      if (initObj.hasOwnProperty('namespace')) {
        this.namespace = initObj.namespace
      }
      else {
        this.namespace = '';
      }
      if (initObj.hasOwnProperty('error_message')) {
        this.error_message = initObj.error_message
      }
      else {
        this.error_message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AllocateSoftwareResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [parameters]
    // Serialize the length for message field [parameters]
    bufferOffset = _serializer.uint32(obj.parameters.length, buffer, bufferOffset);
    obj.parameters.forEach((val) => {
      bufferOffset = rocon_std_msgs.msg.KeyValue.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [namespace]
    bufferOffset = _serializer.string(obj.namespace, buffer, bufferOffset);
    // Serialize message field [error_message]
    bufferOffset = _serializer.string(obj.error_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AllocateSoftwareResponse
    let len;
    let data = new AllocateSoftwareResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [parameters]
    // Deserialize array length for message field [parameters]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.parameters = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.parameters[i] = rocon_std_msgs.msg.KeyValue.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [namespace]
    data.namespace = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [error_message]
    data.error_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.parameters.forEach((val) => {
      length += rocon_std_msgs.msg.KeyValue.getMessageSize(val);
    });
    length += object.namespace.length;
    length += object.error_message.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'concert_msgs/AllocateSoftwareResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67cae1e35a4f8ba23ce1548c86cbaed7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    rocon_std_msgs/KeyValue[] parameters
    string namespace
    string error_message
    
    
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
    const resolved = new AllocateSoftwareResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
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

    if (msg.namespace !== undefined) {
      resolved.namespace = msg.namespace;
    }
    else {
      resolved.namespace = ''
    }

    if (msg.error_message !== undefined) {
      resolved.error_message = msg.error_message;
    }
    else {
      resolved.error_message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: AllocateSoftwareRequest,
  Response: AllocateSoftwareResponse,
  md5sum() { return '9a9d4cc73086cbcea67798fb6b0cda56'; },
  datatype() { return 'concert_msgs/AllocateSoftware'; }
};
