// Auto-generated. Do not edit!

// (in-package rocon_interaction_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RequestInteractionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.remocon = null;
      this.hash = null;
    }
    else {
      if (initObj.hasOwnProperty('remocon')) {
        this.remocon = initObj.remocon
      }
      else {
        this.remocon = '';
      }
      if (initObj.hasOwnProperty('hash')) {
        this.hash = initObj.hash
      }
      else {
        this.hash = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestInteractionRequest
    // Serialize message field [remocon]
    bufferOffset = _serializer.string(obj.remocon, buffer, bufferOffset);
    // Serialize message field [hash]
    bufferOffset = _serializer.int32(obj.hash, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestInteractionRequest
    let len;
    let data = new RequestInteractionRequest(null);
    // Deserialize message field [remocon]
    data.remocon = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [hash]
    data.hash = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.remocon.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rocon_interaction_msgs/RequestInteractionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0504d90333f890dfa98784397225e84f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    string remocon
    
    
    int32 hash
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestInteractionRequest(null);
    if (msg.remocon !== undefined) {
      resolved.remocon = msg.remocon;
    }
    else {
      resolved.remocon = ''
    }

    if (msg.hash !== undefined) {
      resolved.hash = msg.hash;
    }
    else {
      resolved.hash = 0
    }

    return resolved;
    }
};

class RequestInteractionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
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
    // Serializes a message object of type RequestInteractionResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int8(obj.result, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestInteractionResponse
    let len;
    let data = new RequestInteractionResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rocon_interaction_msgs/RequestInteractionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ff98cb6c30c3d7d7a4c770ea066f2fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    int8 result
    
    
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestInteractionResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
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
  Request: RequestInteractionRequest,
  Response: RequestInteractionResponse,
  md5sum() { return 'e252c21f038eca737dee811ede8faaf0'; },
  datatype() { return 'rocon_interaction_msgs/RequestInteraction'; }
};
