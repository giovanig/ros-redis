// Auto-generated. Do not edit!

// (in-package rocon_tutorial_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetAvailableResourcesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rapp = null;
      this.priority = null;
    }
    else {
      if (initObj.hasOwnProperty('rapp')) {
        this.rapp = initObj.rapp
      }
      else {
        this.rapp = '';
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAvailableResourcesRequest
    // Serialize message field [rapp]
    bufferOffset = _serializer.string(obj.rapp, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = _serializer.int16(obj.priority, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAvailableResourcesRequest
    let len;
    let data = new GetAvailableResourcesRequest(null);
    // Deserialize message field [rapp]
    data.rapp = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.rapp.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rocon_tutorial_msgs/GetAvailableResourcesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6acea3bcb7fdb592ecb7ffc748c29b2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string rapp
    int16 priority
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAvailableResourcesRequest(null);
    if (msg.rapp !== undefined) {
      resolved.rapp = msg.rapp;
    }
    else {
      resolved.rapp = ''
    }

    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0
    }

    return resolved;
    }
};

class GetAvailableResourcesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available_resources = null;
      this.preemptible_resources = null;
    }
    else {
      if (initObj.hasOwnProperty('available_resources')) {
        this.available_resources = initObj.available_resources
      }
      else {
        this.available_resources = [];
      }
      if (initObj.hasOwnProperty('preemptible_resources')) {
        this.preemptible_resources = initObj.preemptible_resources
      }
      else {
        this.preemptible_resources = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAvailableResourcesResponse
    // Serialize message field [available_resources]
    bufferOffset = _arraySerializer.string(obj.available_resources, buffer, bufferOffset, null);
    // Serialize message field [preemptible_resources]
    bufferOffset = _arraySerializer.string(obj.preemptible_resources, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAvailableResourcesResponse
    let len;
    let data = new GetAvailableResourcesResponse(null);
    // Deserialize message field [available_resources]
    data.available_resources = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [preemptible_resources]
    data.preemptible_resources = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.available_resources.forEach((val) => {
      length += 4 + val.length;
    });
    object.preemptible_resources.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rocon_tutorial_msgs/GetAvailableResourcesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4211656ed7da3f4d2a05064e9d6a2241';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] available_resources
    string[] preemptible_resources
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAvailableResourcesResponse(null);
    if (msg.available_resources !== undefined) {
      resolved.available_resources = msg.available_resources;
    }
    else {
      resolved.available_resources = []
    }

    if (msg.preemptible_resources !== undefined) {
      resolved.preemptible_resources = msg.preemptible_resources;
    }
    else {
      resolved.preemptible_resources = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetAvailableResourcesRequest,
  Response: GetAvailableResourcesResponse,
  md5sum() { return 'b8917c59e7f27df2ec9f8142cd23fade'; },
  datatype() { return 'rocon_tutorial_msgs/GetAvailableResources'; }
};
