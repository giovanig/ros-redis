// Auto-generated. Do not edit!

// (in-package rocon_std_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Icon = require('./Icon.js');

//-----------------------------------------------------------

class MasterInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.rocon_uri = null;
      this.description = null;
      this.icon = null;
      this.version = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('rocon_uri')) {
        this.rocon_uri = initObj.rocon_uri
      }
      else {
        this.rocon_uri = '';
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('icon')) {
        this.icon = initObj.icon
      }
      else {
        this.icon = new Icon();
      }
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MasterInfo
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [rocon_uri]
    bufferOffset = _serializer.string(obj.rocon_uri, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [icon]
    bufferOffset = Icon.serialize(obj.icon, buffer, bufferOffset);
    // Serialize message field [version]
    bufferOffset = _serializer.string(obj.version, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MasterInfo
    let len;
    let data = new MasterInfo(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rocon_uri]
    data.rocon_uri = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [icon]
    data.icon = Icon.deserialize(buffer, bufferOffset);
    // Deserialize message field [version]
    data.version = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.rocon_uri.length;
    length += object.description.length;
    length += Icon.getMessageSize(object.icon);
    length += object.version.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_std_msgs/MasterInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e85613ae2e3faade6b77d94b4e0bf4bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Publish basic information about this master.
    
    string name
    string rocon_uri
    string description
    rocon_std_msgs/Icon icon
    string version
    ================================================================================
    MSG: rocon_std_msgs/Icon
    # Used to idenfity the original package/filename resource this icon was/is to be loaded from
    # This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.
    string resource_name
    
    # Image data format.  "jpeg" or "png"
    string format
    
    # Image data.
    uint8[] data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MasterInfo(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.rocon_uri !== undefined) {
      resolved.rocon_uri = msg.rocon_uri;
    }
    else {
      resolved.rocon_uri = ''
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.icon !== undefined) {
      resolved.icon = Icon.Resolve(msg.icon)
    }
    else {
      resolved.icon = new Icon()
    }

    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = ''
    }

    return resolved;
    }
};

module.exports = MasterInfo;
