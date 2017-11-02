// Auto-generated. Do not edit!

// (in-package rocon_app_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PublicInterface = require('./PublicInterface.js');

//-----------------------------------------------------------

class PublishedInterface {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.interface = null;
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('interface')) {
        this.interface = initObj.interface
      }
      else {
        this.interface = new PublicInterface();
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
    // Serializes a message object of type PublishedInterface
    // Serialize message field [interface]
    bufferOffset = PublicInterface.serialize(obj.interface, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PublishedInterface
    let len;
    let data = new PublishedInterface(null);
    // Deserialize message field [interface]
    data.interface = PublicInterface.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PublicInterface.getMessageSize(object.interface);
    length += object.name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_app_manager_msgs/PublishedInterface';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0441e6f3dfb91bbff9a213da41a7a0d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The runtime, possibly namespaced and remapped public interface.
    
    PublicInterface interface
    
    # Final absolute namespaced/remapped name of the topic/service/action xxx
    string name
    ================================================================================
    MSG: rocon_app_manager_msgs/PublicInterface
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
    const resolved = new PublishedInterface(null);
    if (msg.interface !== undefined) {
      resolved.interface = PublicInterface.Resolve(msg.interface)
    }
    else {
      resolved.interface = new PublicInterface()
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

module.exports = PublishedInterface;
