// Auto-generated. Do not edit!

// (in-package rocon_std_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Connection = require('./Connection.js');

//-----------------------------------------------------------

class ConnectionsList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.connections = null;
    }
    else {
      if (initObj.hasOwnProperty('connections')) {
        this.connections = initObj.connections
      }
      else {
        this.connections = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConnectionsList
    // Serialize message field [connections]
    // Serialize the length for message field [connections]
    bufferOffset = _serializer.uint32(obj.connections.length, buffer, bufferOffset);
    obj.connections.forEach((val) => {
      bufferOffset = Connection.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConnectionsList
    let len;
    let data = new ConnectionsList(null);
    // Deserialize message field [connections]
    // Deserialize array length for message field [connections]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.connections = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.connections[i] = Connection.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.connections.forEach((val) => {
      length += Connection.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_std_msgs/ConnectionsList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '672d6ad69b684884f8fb6f4acedbd39f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Connection[] connections
    ================================================================================
    MSG: rocon_std_msgs/Connection
    # A connection can be 1 of 5 types
    string PUBLISHER = publisher
    string SUBSCRIBER = subscriber
    string SERVICE = service
    string ACTION_CLIENT = action_client
    string ACTION_SERVER = action_server
    string INVALID = invalid
    
    # type of connection (from string constants above)
    string type
    
    # this is the topic/service name or the action base name
    string name 
    
    # the name of the node establishing this connection
    string node
    
    # topic, service or action type, e.g. std_msgs/String
    string type_msg
    
    # topic, service or action extra type info ( uri for service )
    string type_info
    
    # xmlrpc node uri for managing the connection
    string xmlrpc_uri
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConnectionsList(null);
    if (msg.connections !== undefined) {
      resolved.connections = new Array(msg.connections.length);
      for (let i = 0; i < resolved.connections.length; ++i) {
        resolved.connections[i] = Connection.Resolve(msg.connections[i]);
      }
    }
    else {
      resolved.connections = []
    }

    return resolved;
    }
};

module.exports = ConnectionsList;
