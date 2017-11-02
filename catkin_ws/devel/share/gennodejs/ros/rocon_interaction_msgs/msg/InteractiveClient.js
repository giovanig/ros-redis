// Auto-generated. Do not edit!

// (in-package rocon_interaction_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let rocon_std_msgs = _finder('rocon_std_msgs');
let uuid_msgs = _finder('uuid_msgs');

//-----------------------------------------------------------

class InteractiveClient {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.id = null;
      this.platform_info = null;
      this.running_interactions = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('platform_info')) {
        this.platform_info = initObj.platform_info
      }
      else {
        this.platform_info = new rocon_std_msgs.msg.MasterInfo();
      }
      if (initObj.hasOwnProperty('running_interactions')) {
        this.running_interactions = initObj.running_interactions
      }
      else {
        this.running_interactions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InteractiveClient
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [platform_info]
    bufferOffset = rocon_std_msgs.msg.MasterInfo.serialize(obj.platform_info, buffer, bufferOffset);
    // Serialize message field [running_interactions]
    bufferOffset = _arraySerializer.string(obj.running_interactions, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InteractiveClient
    let len;
    let data = new InteractiveClient(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [platform_info]
    data.platform_info = rocon_std_msgs.msg.MasterInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [running_interactions]
    data.running_interactions = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += rocon_std_msgs.msg.MasterInfo.getMessageSize(object.platform_info);
    object.running_interactions.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_interaction_msgs/InteractiveClient';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8be6d4014d3005ac581b7b0a73488749';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new InteractiveClient(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.id !== undefined) {
      resolved.id = uuid_msgs.msg.UniqueID.Resolve(msg.id)
    }
    else {
      resolved.id = new uuid_msgs.msg.UniqueID()
    }

    if (msg.platform_info !== undefined) {
      resolved.platform_info = rocon_std_msgs.msg.MasterInfo.Resolve(msg.platform_info)
    }
    else {
      resolved.platform_info = new rocon_std_msgs.msg.MasterInfo()
    }

    if (msg.running_interactions !== undefined) {
      resolved.running_interactions = msg.running_interactions;
    }
    else {
      resolved.running_interactions = []
    }

    return resolved;
    }
};

module.exports = InteractiveClient;
