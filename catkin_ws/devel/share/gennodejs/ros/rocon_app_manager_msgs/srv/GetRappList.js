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

let Rapp = require('../msg/Rapp.js');

//-----------------------------------------------------------

class GetRappListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRappListRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRappListRequest
    let len;
    let data = new GetRappListRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rocon_app_manager_msgs/GetRappListRequest';
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
    const resolved = new GetRappListRequest(null);
    return resolved;
    }
};

class GetRappListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available_rapps = null;
      this.running_rapps = null;
    }
    else {
      if (initObj.hasOwnProperty('available_rapps')) {
        this.available_rapps = initObj.available_rapps
      }
      else {
        this.available_rapps = [];
      }
      if (initObj.hasOwnProperty('running_rapps')) {
        this.running_rapps = initObj.running_rapps
      }
      else {
        this.running_rapps = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRappListResponse
    // Serialize message field [available_rapps]
    // Serialize the length for message field [available_rapps]
    bufferOffset = _serializer.uint32(obj.available_rapps.length, buffer, bufferOffset);
    obj.available_rapps.forEach((val) => {
      bufferOffset = Rapp.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [running_rapps]
    // Serialize the length for message field [running_rapps]
    bufferOffset = _serializer.uint32(obj.running_rapps.length, buffer, bufferOffset);
    obj.running_rapps.forEach((val) => {
      bufferOffset = Rapp.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRappListResponse
    let len;
    let data = new GetRappListResponse(null);
    // Deserialize message field [available_rapps]
    // Deserialize array length for message field [available_rapps]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.available_rapps = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.available_rapps[i] = Rapp.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [running_rapps]
    // Deserialize array length for message field [running_rapps]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.running_rapps = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.running_rapps[i] = Rapp.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.available_rapps.forEach((val) => {
      length += Rapp.getMessageSize(val);
    });
    object.running_rapps.forEach((val) => {
      length += Rapp.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rocon_app_manager_msgs/GetRappListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68cf30e80880962b92b2794f1f078c7f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Rapp[] available_rapps
    Rapp[] running_rapps
    
    
    ================================================================================
    MSG: rocon_app_manager_msgs/Rapp
    # This is the message that gets published in list_rapps. Do not think of it as the
    # 'rapp' definition (since that is quite varied -> ancestor, virtual, child, implementation)
    # Rather it is the published list of rapps with the required information for the concert
    # and some introspection.
    
    # app name (ros resource name format, i.e. pkg/name, e.g. turtle_concert/teleop)
    string name
    # user-friendly display name
    string display_name
    string description
    # a rocon uri string indicating platform compatibility
    string compatibility
    string status
    
    # a list of implementations
    string[] implementations
    
    # A preferred rapp for virtual rapp
    string preferred
    
    # icon for showing the app
    rocon_std_msgs/Icon icon
    
    # public interface and parameters
    rocon_std_msgs/KeyValue[] public_interface
    rocon_std_msgs/KeyValue[] public_parameters
    
    ================================================================================
    MSG: rocon_std_msgs/Icon
    # Used to idenfity the original package/filename resource this icon was/is to be loaded from
    # This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.
    string resource_name
    
    # Image data format.  "jpeg" or "png"
    string format
    
    # Image data.
    uint8[] data
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
    const resolved = new GetRappListResponse(null);
    if (msg.available_rapps !== undefined) {
      resolved.available_rapps = new Array(msg.available_rapps.length);
      for (let i = 0; i < resolved.available_rapps.length; ++i) {
        resolved.available_rapps[i] = Rapp.Resolve(msg.available_rapps[i]);
      }
    }
    else {
      resolved.available_rapps = []
    }

    if (msg.running_rapps !== undefined) {
      resolved.running_rapps = new Array(msg.running_rapps.length);
      for (let i = 0; i < resolved.running_rapps.length; ++i) {
        resolved.running_rapps[i] = Rapp.Resolve(msg.running_rapps[i]);
      }
    }
    else {
      resolved.running_rapps = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetRappListRequest,
  Response: GetRappListResponse,
  md5sum() { return '68cf30e80880962b92b2794f1f078c7f'; },
  datatype() { return 'rocon_app_manager_msgs/GetRappList'; }
};
