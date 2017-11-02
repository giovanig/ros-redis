// Auto-generated. Do not edit!

// (in-package rocon_app_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Rapp = require('./Rapp.js');

//-----------------------------------------------------------

class RappList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available_rapps = null;
    }
    else {
      if (initObj.hasOwnProperty('available_rapps')) {
        this.available_rapps = initObj.available_rapps
      }
      else {
        this.available_rapps = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RappList
    // Serialize message field [available_rapps]
    // Serialize the length for message field [available_rapps]
    bufferOffset = _serializer.uint32(obj.available_rapps.length, buffer, bufferOffset);
    obj.available_rapps.forEach((val) => {
      bufferOffset = Rapp.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RappList
    let len;
    let data = new RappList(null);
    // Deserialize message field [available_rapps]
    // Deserialize array length for message field [available_rapps]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.available_rapps = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.available_rapps[i] = Rapp.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.available_rapps.forEach((val) => {
      length += Rapp.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_app_manager_msgs/RappList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '796706b807515187050df80223ad161e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Rapp[] available_rapps
    
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
    const resolved = new RappList(null);
    if (msg.available_rapps !== undefined) {
      resolved.available_rapps = new Array(msg.available_rapps.length);
      for (let i = 0; i < resolved.available_rapps.length; ++i) {
        resolved.available_rapps[i] = Rapp.Resolve(msg.available_rapps[i]);
      }
    }
    else {
      resolved.available_rapps = []
    }

    return resolved;
    }
};

module.exports = RappList;
