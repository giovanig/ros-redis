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

let DiscoveredService = require('../msg/DiscoveredService.js');

//-----------------------------------------------------------

class ListDiscoveredServicesRequest {
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
    // Serializes a message object of type ListDiscoveredServicesRequest
    // Serialize message field [service_type]
    bufferOffset = _serializer.string(obj.service_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListDiscoveredServicesRequest
    let len;
    let data = new ListDiscoveredServicesRequest(null);
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
    return 'zeroconf_msgs/ListDiscoveredServicesRequest';
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
    const resolved = new ListDiscoveredServicesRequest(null);
    if (msg.service_type !== undefined) {
      resolved.service_type = msg.service_type;
    }
    else {
      resolved.service_type = ''
    }

    return resolved;
    }
};

class ListDiscoveredServicesResponse {
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
    // Serializes a message object of type ListDiscoveredServicesResponse
    // Serialize message field [services]
    // Serialize the length for message field [services]
    bufferOffset = _serializer.uint32(obj.services.length, buffer, bufferOffset);
    obj.services.forEach((val) => {
      bufferOffset = DiscoveredService.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListDiscoveredServicesResponse
    let len;
    let data = new ListDiscoveredServicesResponse(null);
    // Deserialize message field [services]
    // Deserialize array length for message field [services]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.services = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.services[i] = DiscoveredService.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.services.forEach((val) => {
      length += DiscoveredService.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'zeroconf_msgs/ListDiscoveredServicesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e5ad0f4eb44cd96b6518cfd53715bb5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    zeroconf_msgs/DiscoveredService[] services
    
    
    ================================================================================
    MSG: zeroconf_msgs/DiscoveredService
    #
    # Provides all the properties required for definition of a discovered 
    # zeroconf service. Note that it contains rather alot more information
    # than that which is used to publish a zeroconf service.
    
    # Service Part
    string name
    string type
    string domain
    string description
    
    # Resolved part
    string hostname
    string[] ipv4_addresses
    string[] ipv6_addresses
    int32 port
    
    # These are detailed variables that you should not normally need
    # and can be safely ignored in most circumstances (currently used
    # by the avahi implementation).
    
    uint32 cookie
    bool is_local
    bool our_own
    bool wide_area
    bool multicast
    bool cached
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListDiscoveredServicesResponse(null);
    if (msg.services !== undefined) {
      resolved.services = new Array(msg.services.length);
      for (let i = 0; i < resolved.services.length; ++i) {
        resolved.services[i] = DiscoveredService.Resolve(msg.services[i]);
      }
    }
    else {
      resolved.services = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ListDiscoveredServicesRequest,
  Response: ListDiscoveredServicesResponse,
  md5sum() { return '5e4f7a51e03f794adcd5dbfc4a5acfb6'; },
  datatype() { return 'zeroconf_msgs/ListDiscoveredServices'; }
};
