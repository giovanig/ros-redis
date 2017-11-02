// Auto-generated. Do not edit!

// (in-package concert_msgs.msg)


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

class ServiceProfile {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resource_name = null;
      this.name = null;
      this.description = null;
      this.author = null;
      this.priority = null;
      this.icon = null;
      this.launcher_type = null;
      this.launcher = null;
      this.interactions = null;
      this.parameters = null;
      this.parameters_detail = null;
      this.uuid = null;
      this.status = null;
      this.enabled = null;
    }
    else {
      if (initObj.hasOwnProperty('resource_name')) {
        this.resource_name = initObj.resource_name
      }
      else {
        this.resource_name = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('author')) {
        this.author = initObj.author
      }
      else {
        this.author = '';
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0;
      }
      if (initObj.hasOwnProperty('icon')) {
        this.icon = initObj.icon
      }
      else {
        this.icon = new rocon_std_msgs.msg.Icon();
      }
      if (initObj.hasOwnProperty('launcher_type')) {
        this.launcher_type = initObj.launcher_type
      }
      else {
        this.launcher_type = '';
      }
      if (initObj.hasOwnProperty('launcher')) {
        this.launcher = initObj.launcher
      }
      else {
        this.launcher = '';
      }
      if (initObj.hasOwnProperty('interactions')) {
        this.interactions = initObj.interactions
      }
      else {
        this.interactions = '';
      }
      if (initObj.hasOwnProperty('parameters')) {
        this.parameters = initObj.parameters
      }
      else {
        this.parameters = '';
      }
      if (initObj.hasOwnProperty('parameters_detail')) {
        this.parameters_detail = initObj.parameters_detail
      }
      else {
        this.parameters_detail = [];
      }
      if (initObj.hasOwnProperty('uuid')) {
        this.uuid = initObj.uuid
      }
      else {
        this.uuid = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('enabled')) {
        this.enabled = initObj.enabled
      }
      else {
        this.enabled = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServiceProfile
    // Serialize message field [resource_name]
    bufferOffset = _serializer.string(obj.resource_name, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [author]
    bufferOffset = _serializer.string(obj.author, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = _serializer.uint16(obj.priority, buffer, bufferOffset);
    // Serialize message field [icon]
    bufferOffset = rocon_std_msgs.msg.Icon.serialize(obj.icon, buffer, bufferOffset);
    // Serialize message field [launcher_type]
    bufferOffset = _serializer.string(obj.launcher_type, buffer, bufferOffset);
    // Serialize message field [launcher]
    bufferOffset = _serializer.string(obj.launcher, buffer, bufferOffset);
    // Serialize message field [interactions]
    bufferOffset = _serializer.string(obj.interactions, buffer, bufferOffset);
    // Serialize message field [parameters]
    bufferOffset = _serializer.string(obj.parameters, buffer, bufferOffset);
    // Serialize message field [parameters_detail]
    // Serialize the length for message field [parameters_detail]
    bufferOffset = _serializer.uint32(obj.parameters_detail.length, buffer, bufferOffset);
    obj.parameters_detail.forEach((val) => {
      bufferOffset = rocon_std_msgs.msg.KeyValue.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [uuid]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.uuid, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int16(obj.status, buffer, bufferOffset);
    // Serialize message field [enabled]
    bufferOffset = _serializer.bool(obj.enabled, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServiceProfile
    let len;
    let data = new ServiceProfile(null);
    // Deserialize message field [resource_name]
    data.resource_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [author]
    data.author = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [icon]
    data.icon = rocon_std_msgs.msg.Icon.deserialize(buffer, bufferOffset);
    // Deserialize message field [launcher_type]
    data.launcher_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [launcher]
    data.launcher = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [interactions]
    data.interactions = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [parameters]
    data.parameters = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [parameters_detail]
    // Deserialize array length for message field [parameters_detail]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.parameters_detail = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.parameters_detail[i] = rocon_std_msgs.msg.KeyValue.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [uuid]
    data.uuid = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [enabled]
    data.enabled = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.resource_name.length;
    length += object.name.length;
    length += object.description.length;
    length += object.author.length;
    length += rocon_std_msgs.msg.Icon.getMessageSize(object.icon);
    length += object.launcher_type.length;
    length += object.launcher.length;
    length += object.interactions.length;
    length += object.parameters.length;
    object.parameters_detail.forEach((val) => {
      length += rocon_std_msgs.msg.KeyValue.getMessageSize(val);
    });
    return length + 57;
  }

  static datatype() {
    // Returns string type for a message object
    return 'concert_msgs/ServiceProfile';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dcb6ede1f2f06a387af71a83b4776139';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Constants - service types
    string TYPE_ROSLAUNCH = roslaunch
    string TYPE_CUSTOM    = custom
    string TYPE_SHADOW    = shadow
    
    # Pre-configured parameters
    string                      resource_name
    string                      name
    string                      description
    string                      author
    uint16                      priority
    rocon_std_msgs/Icon         icon
    string                      launcher_type
    string                      launcher
    string                      interactions
    string                      parameters
    rocon_std_msgs/KeyValue[]   parameters_detail
    
    # Initialised parameters (on startup)
    uuid_msgs/UniqueID          uuid
    
    # Runtime variables
    int16                       status
    bool                        enabled
    
    ================================================================================
    MSG: rocon_std_msgs/Icon
    # Used to idenfity the original package/filename resource this icon was/is to be loaded from
    # This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.
    string resource_name
    
    # Image data format.  "jpeg" or "png"
    string format
    
    # Image data.
    uint8[] data
    ================================================================================
    MSG: rocon_std_msgs/KeyValue
    string key
    string value
    ================================================================================
    MSG: uuid_msgs/UniqueID
    # A universally unique identifier (UUID).
    #
    #  http://en.wikipedia.org/wiki/Universally_unique_identifier
    #  http://tools.ietf.org/html/rfc4122.html
    
    uint8[16] uuid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServiceProfile(null);
    if (msg.resource_name !== undefined) {
      resolved.resource_name = msg.resource_name;
    }
    else {
      resolved.resource_name = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.author !== undefined) {
      resolved.author = msg.author;
    }
    else {
      resolved.author = ''
    }

    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0
    }

    if (msg.icon !== undefined) {
      resolved.icon = rocon_std_msgs.msg.Icon.Resolve(msg.icon)
    }
    else {
      resolved.icon = new rocon_std_msgs.msg.Icon()
    }

    if (msg.launcher_type !== undefined) {
      resolved.launcher_type = msg.launcher_type;
    }
    else {
      resolved.launcher_type = ''
    }

    if (msg.launcher !== undefined) {
      resolved.launcher = msg.launcher;
    }
    else {
      resolved.launcher = ''
    }

    if (msg.interactions !== undefined) {
      resolved.interactions = msg.interactions;
    }
    else {
      resolved.interactions = ''
    }

    if (msg.parameters !== undefined) {
      resolved.parameters = msg.parameters;
    }
    else {
      resolved.parameters = ''
    }

    if (msg.parameters_detail !== undefined) {
      resolved.parameters_detail = new Array(msg.parameters_detail.length);
      for (let i = 0; i < resolved.parameters_detail.length; ++i) {
        resolved.parameters_detail[i] = rocon_std_msgs.msg.KeyValue.Resolve(msg.parameters_detail[i]);
      }
    }
    else {
      resolved.parameters_detail = []
    }

    if (msg.uuid !== undefined) {
      resolved.uuid = uuid_msgs.msg.UniqueID.Resolve(msg.uuid)
    }
    else {
      resolved.uuid = new uuid_msgs.msg.UniqueID()
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.enabled !== undefined) {
      resolved.enabled = msg.enabled;
    }
    else {
      resolved.enabled = false
    }

    return resolved;
    }
};

// Constants for message
ServiceProfile.Constants = {
  TYPE_ROSLAUNCH: 'roslaunch',
  TYPE_CUSTOM: 'custom',
  TYPE_SHADOW: 'shadow',
}

module.exports = ServiceProfile;
