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

class Connection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.name = null;
      this.node = null;
      this.type_msg = null;
      this.type_info = null;
      this.xmlrpc_uri = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = '';
      }
      if (initObj.hasOwnProperty('type_msg')) {
        this.type_msg = initObj.type_msg
      }
      else {
        this.type_msg = '';
      }
      if (initObj.hasOwnProperty('type_info')) {
        this.type_info = initObj.type_info
      }
      else {
        this.type_info = '';
      }
      if (initObj.hasOwnProperty('xmlrpc_uri')) {
        this.xmlrpc_uri = initObj.xmlrpc_uri
      }
      else {
        this.xmlrpc_uri = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Connection
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [node]
    bufferOffset = _serializer.string(obj.node, buffer, bufferOffset);
    // Serialize message field [type_msg]
    bufferOffset = _serializer.string(obj.type_msg, buffer, bufferOffset);
    // Serialize message field [type_info]
    bufferOffset = _serializer.string(obj.type_info, buffer, bufferOffset);
    // Serialize message field [xmlrpc_uri]
    bufferOffset = _serializer.string(obj.xmlrpc_uri, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Connection
    let len;
    let data = new Connection(null);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [node]
    data.node = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type_msg]
    data.type_msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type_info]
    data.type_info = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [xmlrpc_uri]
    data.xmlrpc_uri = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.type.length;
    length += object.name.length;
    length += object.node.length;
    length += object.type_msg.length;
    length += object.type_info.length;
    length += object.xmlrpc_uri.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_std_msgs/Connection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0dee991006513320090e2ee648136101';
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
    const resolved = new Connection(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.node !== undefined) {
      resolved.node = msg.node;
    }
    else {
      resolved.node = ''
    }

    if (msg.type_msg !== undefined) {
      resolved.type_msg = msg.type_msg;
    }
    else {
      resolved.type_msg = ''
    }

    if (msg.type_info !== undefined) {
      resolved.type_info = msg.type_info;
    }
    else {
      resolved.type_info = ''
    }

    if (msg.xmlrpc_uri !== undefined) {
      resolved.xmlrpc_uri = msg.xmlrpc_uri;
    }
    else {
      resolved.xmlrpc_uri = ''
    }

    return resolved;
    }
};

// Constants for message
Connection.Constants = {
  PUBLISHER: 'publisher',
  SUBSCRIBER: 'subscriber',
  SERVICE: 'service',
  ACTION_CLIENT: 'action_client',
  ACTION_SERVER: 'action_server',
  INVALID: 'invalid',
}

module.exports = Connection;
