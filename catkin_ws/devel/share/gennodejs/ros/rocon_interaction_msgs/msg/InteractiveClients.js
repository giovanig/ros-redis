// Auto-generated. Do not edit!

// (in-package rocon_interaction_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let InteractiveClient = require('./InteractiveClient.js');

//-----------------------------------------------------------

class InteractiveClients {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.idle_clients = null;
      this.running_clients = null;
    }
    else {
      if (initObj.hasOwnProperty('idle_clients')) {
        this.idle_clients = initObj.idle_clients
      }
      else {
        this.idle_clients = [];
      }
      if (initObj.hasOwnProperty('running_clients')) {
        this.running_clients = initObj.running_clients
      }
      else {
        this.running_clients = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InteractiveClients
    // Serialize message field [idle_clients]
    // Serialize the length for message field [idle_clients]
    bufferOffset = _serializer.uint32(obj.idle_clients.length, buffer, bufferOffset);
    obj.idle_clients.forEach((val) => {
      bufferOffset = InteractiveClient.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [running_clients]
    // Serialize the length for message field [running_clients]
    bufferOffset = _serializer.uint32(obj.running_clients.length, buffer, bufferOffset);
    obj.running_clients.forEach((val) => {
      bufferOffset = InteractiveClient.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InteractiveClients
    let len;
    let data = new InteractiveClients(null);
    // Deserialize message field [idle_clients]
    // Deserialize array length for message field [idle_clients]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.idle_clients = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.idle_clients[i] = InteractiveClient.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [running_clients]
    // Deserialize array length for message field [running_clients]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.running_clients = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.running_clients[i] = InteractiveClient.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.idle_clients.forEach((val) => {
      length += InteractiveClient.getMessageSize(val);
    });
    object.running_clients.forEach((val) => {
      length += InteractiveClient.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_interaction_msgs/InteractiveClients';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5a5f85c169f63b30c61759b0bcca81c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 
    # Two lists are included here to distinguish between idle clients and those that
    # are currently running an app.
    #
    InteractiveClient[] idle_clients
    InteractiveClient[] running_clients
    
    ================================================================================
    MSG: rocon_interaction_msgs/InteractiveClient
    # 
    # Describes an interactive concert client.
    #
    # Unique names - human consumable rocon name as well as globally unique name
    # provided by the remocon client.
    
    string name
    uuid_msgs/UniqueID id
    
    rocon_std_msgs/MasterInfo platform_info
    
    # easy to read display names of interactions running on this remocon
    string[] running_interactions
    
    ================================================================================
    MSG: uuid_msgs/UniqueID
    # A universally unique identifier (UUID).
    #
    #  http://en.wikipedia.org/wiki/Universally_unique_identifier
    #  http://tools.ietf.org/html/rfc4122.html
    
    uint8[16] uuid
    
    ================================================================================
    MSG: rocon_std_msgs/MasterInfo
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
    const resolved = new InteractiveClients(null);
    if (msg.idle_clients !== undefined) {
      resolved.idle_clients = new Array(msg.idle_clients.length);
      for (let i = 0; i < resolved.idle_clients.length; ++i) {
        resolved.idle_clients[i] = InteractiveClient.Resolve(msg.idle_clients[i]);
      }
    }
    else {
      resolved.idle_clients = []
    }

    if (msg.running_clients !== undefined) {
      resolved.running_clients = new Array(msg.running_clients.length);
      for (let i = 0; i < resolved.running_clients.length; ++i) {
        resolved.running_clients[i] = InteractiveClient.Resolve(msg.running_clients[i]);
      }
    }
    else {
      resolved.running_clients = []
    }

    return resolved;
    }
};

module.exports = InteractiveClients;
