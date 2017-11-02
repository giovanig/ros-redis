// Auto-generated. Do not edit!

// (in-package zeroconf_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RemoveListenerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.service_type = null;
    }
    else {
      if (initObj.hasOwnProperty('service_type')) {
        this.service_type = initObj.service_type
      }
      else {
        this.service_type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoveListenerRequest
    // Serialize message field [service_type]
    bufferOffset = _serializer.string(obj.service_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoveListenerRequest
    let len;
    let data = new RemoveListenerRequest(null);
    // Deserialize message field [service_type]
    data.service_type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.service_type.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'zeroconf_msgs/RemoveListenerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e1bf1fd6519c823d87c16f342a193a85';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string service_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RemoveListenerRequest(null);
    if (msg.service_type !== undefined) {
      resolved.service_type = msg.service_type;
    }
    else {
      resolved.service_type = ''
    }

    return resolved;
    }
};

class RemoveListenerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoveListenerResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoveListenerResponse
    let len;
    let data = new RemoveListenerResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'zeroconf_msgs/RemoveListenerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RemoveListenerResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: RemoveListenerRequest,
  Response: RemoveListenerResponse,
  md5sum() { return '05d7490b40a920d3a0ffcc1ebf3a0889'; },
  datatype() { return 'zeroconf_msgs/RemoveListener'; }
};
