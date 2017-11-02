// Auto-generated. Do not edit!

// (in-package rocon_device_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let Device = require('../msg/Device.js');

//-----------------------------------------------------------

class GetDeviceListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDeviceListRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDeviceListRequest
    let len;
    let data = new GetDeviceListRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rocon_device_msgs/GetDeviceListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDeviceListRequest(null);
    return resolved;
    }
};

class GetDeviceListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.devices = null;
    }
    else {
      if (initObj.hasOwnProperty('devices')) {
        this.devices = initObj.devices
      }
      else {
        this.devices = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDeviceListResponse
    // Serialize message field [devices]
    // Serialize the length for message field [devices]
    bufferOffset = _serializer.uint32(obj.devices.length, buffer, bufferOffset);
    obj.devices.forEach((val) => {
      bufferOffset = Device.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDeviceListResponse
    let len;
    let data = new GetDeviceListResponse(null);
    // Deserialize message field [devices]
    // Deserialize array length for message field [devices]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.devices = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.devices[i] = Device.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.devices.forEach((val) => {
      length += Device.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rocon_device_msgs/GetDeviceListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '47ac4241194bb5519686779949c9843b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Device[] devices
    
    
    ================================================================================
    MSG: rocon_device_msgs/Device
    string label
    string type
    string uuid
    rocon_std_msgs/KeyValue[] data
    
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
    const resolved = new GetDeviceListResponse(null);
    if (msg.devices !== undefined) {
      resolved.devices = new Array(msg.devices.length);
      for (let i = 0; i < resolved.devices.length; ++i) {
        resolved.devices[i] = Device.Resolve(msg.devices[i]);
      }
    }
    else {
      resolved.devices = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetDeviceListRequest,
  Response: GetDeviceListResponse,
  md5sum() { return '47ac4241194bb5519686779949c9843b'; },
  datatype() { return 'rocon_device_msgs/GetDeviceList'; }
};
