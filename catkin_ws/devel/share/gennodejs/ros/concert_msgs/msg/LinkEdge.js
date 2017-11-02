// Auto-generated. Do not edit!

// (in-package concert_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LinkEdge {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start = null;
      this.finish = null;
      this.remap_from = null;
      this.remap_to = null;
    }
    else {
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = '';
      }
      if (initObj.hasOwnProperty('finish')) {
        this.finish = initObj.finish
      }
      else {
        this.finish = '';
      }
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
    // Serializes a message object of type LinkEdge
    // Serialize message field [start]
    bufferOffset = _serializer.string(obj.start, buffer, bufferOffset);
    // Serialize message field [finish]
    bufferOffset = _serializer.string(obj.finish, buffer, bufferOffset);
    // Serialize message field [remap_from]
    bufferOffset = _serializer.string(obj.remap_from, buffer, bufferOffset);
    // Serialize message field [remap_to]
    bufferOffset = _serializer.string(obj.remap_to, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LinkEdge
    let len;
    let data = new LinkEdge(null);
    // Deserialize message field [start]
    data.start = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [finish]
    data.finish = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [remap_from]
    data.remap_from = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [remap_to]
    data.remap_to = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.start.length;
    length += object.finish.length;
    length += object.remap_from.length;
    length += object.remap_to.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'concert_msgs/LinkEdge';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '01f86ee3e51dd78d2e2153a94d6f3865';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Edge of the implementation graph. Client-Topic, or 
    # Topic-Client or Client-Action or Action-Client
    
    string start
    string finish
    string remap_from
    string remap_to
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LinkEdge(null);
    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = ''
    }

    if (msg.finish !== undefined) {
      resolved.finish = msg.finish;
    }
    else {
      resolved.finish = ''
    }

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

module.exports = LinkEdge;
