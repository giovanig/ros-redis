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

let PublishedService = require('../msg/PublishedService.js');

//-----------------------------------------------------------

class ListPublishedServicesRequest {
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
    // Serializes a message object of type ListPublishedServicesRequest
    // Serialize message field [service_type]
    bufferOffset = _serializer.string(obj.service_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListPublishedServicesRequest
    let len;
    let data = new ListPublishedServicesRequest(null);
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
    return 'zeroconf_msgs/ListPublishedServicesRequest';
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
    const resolved = new ListPublishedServicesRequest(null);
    if (msg.service_type !== undefined) {
      resolved.service_type = msg.service_type;
    }
    else {
      resolved.service_type = ''
    }

    return resolved;
    }
};

class ListPublishedServicesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.services = null;
    }
    else {
      if (initObj.hasOwnProperty('services')) {
        this.services = initObj.services
      }
      else {
        this.services = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListPublishedServicesResponse
    // Serialize message field [services]
    // Serialize the length for message field [services]
    bufferOffset = _serializer.uint32(obj.services.length, buffer, bufferOffset);
    obj.services.forEach((val) => {
      bufferOffset = PublishedService.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListPublishedServicesResponse
    let len;
    let data = new ListPublishedServicesResponse(null);
    // Deserialize message field [services]
    // Deserialize array length for message field [services]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.services = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.services[i] = PublishedService.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.services.forEach((val) => {
      length += PublishedService.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'zeroconf_msgs/ListPublishedServicesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12aaabf9e3957c5a3d8c742745b6d97d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    zeroconf_msgs/PublishedService[] services
    
    
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
    const resolved = new ListPublishedServicesResponse(null);
    if (msg.services !== undefined) {
      resolved.services = new Array(msg.services.length);
      for (let i = 0; i < resolved.services.length; ++i) {
        resolved.services[i] = PublishedService.Resolve(msg.services[i]);
      }
    }
    else {
      resolved.services = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ListPublishedServicesRequest,
  Response: ListPublishedServicesResponse,
  md5sum() { return '7d391b756e89ad5929088251d9e80c9f'; },
  datatype() { return 'zeroconf_msgs/ListPublishedServices'; }
};
