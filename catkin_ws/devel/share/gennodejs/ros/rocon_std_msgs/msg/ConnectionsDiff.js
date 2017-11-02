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

class ConnectionsDiff {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.added = null;
      this.lost = null;
    }
    else {
      if (initObj.hasOwnProperty('added')) {
        this.added = initObj.added
      }
      else {
        this.added = [];
      }
      if (initObj.hasOwnProperty('lost')) {
        this.lost = initObj.lost
      }
      else {
        this.lost = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConnectionsDiff
    // Serialize message field [added]
    // Serialize the length for message field [added]
    bufferOffset = _serializer.uint32(obj.added.length, buffer, bufferOffset);
    obj.added.forEach((val) => {
      bufferOffset = Connection.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [lost]
    // Serialize the length for message field [lost]
    bufferOffset = _serializer.uint32(obj.lost.length, buffer, bufferOffset);
    obj.lost.forEach((val) => {
      bufferOffset = Connection.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConnectionsDiff
    let len;
    let data = new ConnectionsDiff(null);
    // Deserialize message field [added]
    // Deserialize array length for message field [added]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.added = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.added[i] = Connection.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [lost]
    // Deserialize array length for message field [lost]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lost = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lost[i] = Connection.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.added.forEach((val) => {
      length += Connection.getMessageSize(val);
    });
    object.lost.forEach((val) => {
      length += Connection.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_std_msgs/ConnectionsDiff';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '19f9e3bef1153b4bc619ec3d21b94718';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Connection[] added
    Connection[] lost
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
    const resolved = new ConnectionsDiff(null);
    if (msg.added !== undefined) {
      resolved.added = new Array(msg.added.length);
      for (let i = 0; i < resolved.added.length; ++i) {
        resolved.added[i] = Connection.Resolve(msg.added[i]);
      }
    }
    else {
      resolved.added = []
    }

    if (msg.lost !== undefined) {
      resolved.lost = new Array(msg.lost.length);
      for (let i = 0; i < resolved.lost.length; ++i) {
        resolved.lost[i] = Connection.Resolve(msg.lost[i]);
      }
    }
    else {
      resolved.lost = []
    }

    return resolved;
    }
};

module.exports = ConnectionsDiff;
