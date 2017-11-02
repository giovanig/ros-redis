// Auto-generated. Do not edit!

// (in-package rocon_std_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Icon {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resource_name = null;
      this.format = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('resource_name')) {
        this.resource_name = initObj.resource_name
      }
      else {
        this.resource_name = '';
      }
      if (initObj.hasOwnProperty('format')) {
        this.format = initObj.format
      }
      else {
        this.format = '';
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Icon
    // Serialize message field [resource_name]
    bufferOffset = _serializer.string(obj.resource_name, buffer, bufferOffset);
    // Serialize message field [format]
    bufferOffset = _serializer.string(obj.format, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.uint8(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Icon
    let len;
    let data = new Icon(null);
    // Deserialize message field [resource_name]
    data.resource_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [format]
    data.format = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.resource_name.length;
    length += object.format.length;
    length += object.data.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_std_msgs/Icon';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ddacfedd31b6da3f723794afbd3b9de';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Icon(null);
    if (msg.resource_name !== undefined) {
      resolved.resource_name = msg.resource_name;
    }
    else {
      resolved.resource_name = ''
    }

    if (msg.format !== undefined) {
      resolved.format = msg.format;
    }
    else {
      resolved.format = ''
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = Icon;
