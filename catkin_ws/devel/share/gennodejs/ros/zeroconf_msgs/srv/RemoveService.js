// Auto-generated. Do not edit!

// (in-package zeroconf_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PublishedService = require('../msg/PublishedService.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class RemoveServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.service = null;
    }
    else {
      if (initObj.hasOwnProperty('service')) {
        this.service = initObj.service
      }
      else {
        this.service = new PublishedService();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoveServiceRequest
    // Serialize message field [service]
    bufferOffset = PublishedService.serialize(obj.service, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoveServiceRequest
    let len;
    let data = new RemoveServiceRequest(null);
    // Deserialize message field [service]
    data.service = PublishedService.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PublishedService.getMessageSize(object.service);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'zeroconf_msgs/RemoveServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7028a4a43349f6cca86209ddd39f607a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    zeroconf_msgs/PublishedService service
    
    ================================================================================
    MSG: zeroconf_msgs/PublishedService
    #
    # Provides all the properties required for publishing of a zeroconf service.
    
    string name
    string type
    string domain
    int32 port
    string description
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RemoveServiceRequest(null);
    if (msg.service !== undefined) {
      resolved.service = PublishedService.Resolve(msg.service)
    }
    else {
      resolved.service = new PublishedService()
    }

    return resolved;
    }
};

class RemoveServiceResponse {
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
    // Serializes a message object of type RemoveServiceResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoveServiceResponse
    let len;
    let data = new RemoveServiceResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'zeroconf_msgs/RemoveServiceResponse';
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
    const resolved = new RemoveServiceResponse(null);
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
  Request: RemoveServiceRequest,
  Response: RemoveServiceResponse,
  md5sum() { return '2ae0e420b2f58ab49b813cd81e42d4b3'; },
  datatype() { return 'zeroconf_msgs/RemoveService'; }
};
