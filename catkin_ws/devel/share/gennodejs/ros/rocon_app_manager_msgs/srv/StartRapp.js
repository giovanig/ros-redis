// Auto-generated. Do not edit!

// (in-package rocon_app_manager_msgs.srv)


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

class StartRappRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.remappings = null;
      this.parameters = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('remappings')) {
        this.remappings = initObj.remappings
      }
      else {
        this.remappings = [];
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
    // Serializes a message object of type StartRappRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [remappings]
    // Serialize the length for message field [remappings]
    bufferOffset = _serializer.uint32(obj.remappings.length, buffer, bufferOffset);
    obj.remappings.forEach((val) => {
      bufferOffset = rocon_std_msgs.msg.Remapping.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [parameters]
    // Serialize the length for message field [parameters]
    bufferOffset = _serializer.uint32(obj.parameters.length, buffer, bufferOffset);
    obj.parameters.forEach((val) => {
      bufferOffset = rocon_std_msgs.msg.KeyValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartRappRequest
    let len;
    let data = new StartRappRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [remappings]
    // Deserialize array length for message field [remappings]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.remappings = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.remappings[i] = rocon_std_msgs.msg.Remapping.deserialize(buffer, bufferOffset)
    }
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
    length += object.name.length;
    object.remappings.forEach((val) => {
      length += rocon_std_msgs.msg.Remapping.getMessageSize(val);
    });
    object.parameters.forEach((val) => {
      length += rocon_std_msgs.msg.KeyValue.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rocon_app_manager_msgs/StartRappRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb167056946b89b371dab6e226563482';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string name
    rocon_std_msgs/Remapping[] remappings
    
    
    rocon_std_msgs/KeyValue[] parameters
    
    ================================================================================
    MSG: rocon_std_msgs/Remapping
    # Describes your typical ros remapping
    
    string remap_from
    string remap_to
    
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
    const resolved = new StartRappRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.remappings !== undefined) {
      resolved.remappings = new Array(msg.remappings.length);
      for (let i = 0; i < resolved.remappings.length; ++i) {
        resolved.remappings[i] = rocon_std_msgs.msg.Remapping.Resolve(msg.remappings[i]);
      }
    }
    else {
      resolved.remappings = []
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

class StartRappResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.started = null;
      this.error_code = null;
      this.message = null;
      this.application_namespace = null;
    }
    else {
      if (initObj.hasOwnProperty('started')) {
        this.started = initObj.started
      }
      else {
        this.started = false;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('application_namespace')) {
        this.application_namespace = initObj.application_namespace
      }
      else {
        this.application_namespace = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartRappResponse
    // Serialize message field [started]
    bufferOffset = _serializer.bool(obj.started, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.int32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [application_namespace]
    bufferOffset = _serializer.string(obj.application_namespace, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartRappResponse
    let len;
    let data = new StartRappResponse(null);
    // Deserialize message field [started]
    data.started = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [application_namespace]
    data.application_namespace = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    length += object.application_namespace.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rocon_app_manager_msgs/StartRappResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e0ddce154da40da8b63b887f1d049e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool started
    
    
    int32 error_code
    
    
    string message
    
    
    string application_namespace
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartRappResponse(null);
    if (msg.started !== undefined) {
      resolved.started = msg.started;
    }
    else {
      resolved.started = false
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.application_namespace !== undefined) {
      resolved.application_namespace = msg.application_namespace;
    }
    else {
      resolved.application_namespace = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: StartRappRequest,
  Response: StartRappResponse,
  md5sum() { return '6179a6165f5fc5828f129cad01588b6f'; },
  datatype() { return 'rocon_app_manager_msgs/StartRapp'; }
};
