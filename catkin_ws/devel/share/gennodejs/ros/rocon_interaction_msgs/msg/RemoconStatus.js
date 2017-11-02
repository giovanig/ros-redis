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

//-----------------------------------------------------------

class RemoconStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.platform_info = null;
      this.uuid = null;
      this.running_interactions = null;
      this.version = null;
    }
    else {
      if (initObj.hasOwnProperty('platform_info')) {
        this.platform_info = initObj.platform_info
      }
      else {
        this.platform_info = new rocon_std_msgs.msg.MasterInfo();
      }
      if (initObj.hasOwnProperty('uuid')) {
        this.uuid = initObj.uuid
      }
      else {
        this.uuid = '';
      }
      if (initObj.hasOwnProperty('running_interactions')) {
        this.running_interactions = initObj.running_interactions
      }
      else {
        this.running_interactions = [];
      }
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoconStatus
    // Serialize message field [platform_info]
    bufferOffset = rocon_std_msgs.msg.MasterInfo.serialize(obj.platform_info, buffer, bufferOffset);
    // Serialize message field [uuid]
    bufferOffset = _serializer.string(obj.uuid, buffer, bufferOffset);
    // Serialize message field [running_interactions]
    bufferOffset = _arraySerializer.int32(obj.running_interactions, buffer, bufferOffset, null);
    // Serialize message field [version]
    bufferOffset = _serializer.string(obj.version, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoconStatus
    let len;
    let data = new RemoconStatus(null);
    // Deserialize message field [platform_info]
    data.platform_info = rocon_std_msgs.msg.MasterInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [uuid]
    data.uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [running_interactions]
    data.running_interactions = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [version]
    data.version = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += rocon_std_msgs.msg.MasterInfo.getMessageSize(object.platform_info);
    length += object.uuid.length;
    length += 4 * object.running_interactions.length;
    length += object.version.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_interaction_msgs/RemoconStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a586408ad56a017fbadae95562c0c018';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Used by the remocons to inform the concert of it's current status. They should
    # publish this as a latched publisher.
    
    rocon_std_msgs/MasterInfo platform_info
    # The remocon id
    # This should be a '32 character Type 4 uuid hex string'
    string uuid
    
    
    # We should be using this, but java can't handle the type, reintegrate when we bugfix.
    # uuid_msgs/UniqueID[] running_interactions
    
    # This is a crc32 hash code we use because of the above.
    int32[] running_interactions
    
    # rocon version compatibility identifier (used when connecting to concerts)
    string version
    
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
    const resolved = new RemoconStatus(null);
    if (msg.platform_info !== undefined) {
      resolved.platform_info = rocon_std_msgs.msg.MasterInfo.Resolve(msg.platform_info)
    }
    else {
      resolved.platform_info = new rocon_std_msgs.msg.MasterInfo()
    }

    if (msg.uuid !== undefined) {
      resolved.uuid = msg.uuid;
    }
    else {
      resolved.uuid = ''
    }

    if (msg.running_interactions !== undefined) {
      resolved.running_interactions = msg.running_interactions;
    }
    else {
      resolved.running_interactions = []
    }

    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = ''
    }

    return resolved;
    }
};

module.exports = RemoconStatus;
