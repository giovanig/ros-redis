// Auto-generated. Do not edit!

// (in-package rocon_app_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PublicInterface {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.connection_type = null;
      this.data_type = null;
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('connection_type')) {
        this.connection_type = initObj.connection_type
      }
      else {
        this.connection_type = '';
      }
      if (initObj.hasOwnProperty('data_type')) {
        this.data_type = initObj.data_type
      }
      else {
        this.data_type = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PublicInterface
    // Serialize message field [connection_type]
    bufferOffset = _serializer.string(obj.connection_type, buffer, bufferOffset);
    // Serialize message field [data_type]
    bufferOffset = _serializer.string(obj.data_type, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PublicInterface
    let len;
    let data = new PublicInterface(null);
    // Deserialize message field [connection_type]
    data.connection_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data_type]
    data.data_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.connection_type.length;
    length += object.data_type.length;
    length += object.name.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_app_manager_msgs/PublicInterface';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '894455d729ec4bb7068b1f83aa87a23c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Represents a public interface of a rapp
    
    # One of rocon_std_msgs.Connection type string constants ('publisher, 'subscriber', ...)
    string connection_type
    
    # The data type, e.g. std_msgs/Strings
    string data_type
    
    # Name of the topic/service/action xxx.
    string name
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PublicInterface(null);
    if (msg.connection_type !== undefined) {
      resolved.connection_type = msg.connection_type;
    }
    else {
      resolved.connection_type = ''
    }

    if (msg.data_type !== undefined) {
      resolved.data_type = msg.data_type;
    }
    else {
      resolved.data_type = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    return resolved;
    }
};

module.exports = PublicInterface;
