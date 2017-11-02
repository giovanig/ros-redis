// Auto-generated. Do not edit!

// (in-package gateway_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ConnectionType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConnectionType
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConnectionType
    let len;
    let data = new ConnectionType(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gateway_msgs/ConnectionType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65d75f1bb32566bfec48966db2073c81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A connection can be 1 of 5 types
    string PUBLISHER = publisher
    string SUBSCRIBER = subscriber
    string SERVICE = service
    string ACTION_CLIENT = action_client
    string ACTION_SERVER = action_server
    string INVALID = invalid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConnectionType(null);
    return resolved;
    }
};

// Constants for message
ConnectionType.Constants = {
  PUBLISHER: 'publisher',
  SUBSCRIBER: 'subscriber',
  SERVICE: 'service',
  ACTION_CLIENT: 'action_client',
  ACTION_SERVER: 'action_server',
  INVALID: 'invalid',
}

module.exports = ConnectionType;
