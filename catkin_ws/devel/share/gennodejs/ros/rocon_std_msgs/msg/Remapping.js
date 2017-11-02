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

class Remapping {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.remap_from = null;
      this.remap_to = null;
    }
    else {
      if (initObj.hasOwnProperty('remap_from')) {
        this.remap_from = initObj.remap_from
      }
      else {
        this.remap_from = '';
      }
      if (initObj.hasOwnProperty('remap_to')) {
        this.remap_to = initObj.remap_to
      }
      else {
        this.remap_to = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Remapping
    // Serialize message field [remap_from]
    bufferOffset = _serializer.string(obj.remap_from, buffer, bufferOffset);
    // Serialize message field [remap_to]
    bufferOffset = _serializer.string(obj.remap_to, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Remapping
    let len;
    let data = new Remapping(null);
    // Deserialize message field [remap_from]
    data.remap_from = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [remap_to]
    data.remap_to = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.remap_from.length;
    length += object.remap_to.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_std_msgs/Remapping';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '26f16c667d483280bc5d040bf2c0cd8d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Describes your typical ros remapping
    
    string remap_from
    string remap_to
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Remapping(null);
    if (msg.remap_from !== undefined) {
      resolved.remap_from = msg.remap_from;
    }
    else {
      resolved.remap_from = ''
    }

    if (msg.remap_to !== undefined) {
      resolved.remap_to = msg.remap_to;
    }
    else {
      resolved.remap_to = ''
    }

    return resolved;
    }
};

module.exports = Remapping;
