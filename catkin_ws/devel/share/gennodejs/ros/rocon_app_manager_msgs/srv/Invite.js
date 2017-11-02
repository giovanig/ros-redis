// Auto-generated. Do not edit!

// (in-package rocon_app_manager_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class InviteRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.remote_target_name = null;
      this.application_namespace = null;
      this.cancel = null;
    }
    else {
      if (initObj.hasOwnProperty('remote_target_name')) {
        this.remote_target_name = initObj.remote_target_name
      }
      else {
        this.remote_target_name = '';
      }
      if (initObj.hasOwnProperty('application_namespace')) {
        this.application_namespace = initObj.application_namespace
      }
      else {
        this.application_namespace = '';
      }
      if (initObj.hasOwnProperty('cancel')) {
        this.cancel = initObj.cancel
      }
      else {
        this.cancel = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InviteRequest
    // Serialize message field [remote_target_name]
    bufferOffset = _serializer.string(obj.remote_target_name, buffer, bufferOffset);
    // Serialize message field [application_namespace]
    bufferOffset = _serializer.string(obj.application_namespace, buffer, bufferOffset);
    // Serialize message field [cancel]
    bufferOffset = _serializer.bool(obj.cancel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InviteRequest
    let len;
    let data = new InviteRequest(null);
    // Deserialize message field [remote_target_name]
    data.remote_target_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [application_namespace]
    data.application_namespace = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cancel]
    data.cancel = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.remote_target_name.length;
    length += object.application_namespace.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rocon_app_manager_msgs/InviteRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4bed4f247c648d28c7c34a7504917911';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    string remote_target_name
    
    
    
    
    
    string application_namespace
    bool cancel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InviteRequest(null);
    if (msg.remote_target_name !== undefined) {
      resolved.remote_target_name = msg.remote_target_name;
    }
    else {
      resolved.remote_target_name = ''
    }

    if (msg.application_namespace !== undefined) {
      resolved.application_namespace = msg.application_namespace;
    }
    else {
      resolved.application_namespace = ''
    }

    if (msg.cancel !== undefined) {
      resolved.cancel = msg.cancel;
    }
    else {
      resolved.cancel = false
    }

    return resolved;
    }
};

class InviteResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.error_code = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InviteResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.int32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InviteResponse
    let len;
    let data = new InviteResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rocon_app_manager_msgs/InviteResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '384ff408f471a07d9163c63207128ec5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    int32 error_code
    
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InviteResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
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

    return resolved;
    }
};

module.exports = {
  Request: InviteRequest,
  Response: InviteResponse,
  md5sum() { return 'a8a860264b05149cf65b79d0a300e026'; },
  datatype() { return 'rocon_app_manager_msgs/Invite'; }
};
