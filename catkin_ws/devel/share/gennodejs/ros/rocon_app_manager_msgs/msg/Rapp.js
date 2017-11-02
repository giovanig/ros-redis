// Auto-generated. Do not edit!

// (in-package rocon_app_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let rocon_std_msgs = _finder('rocon_std_msgs');

//-----------------------------------------------------------

class Rapp {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.display_name = null;
      this.description = null;
      this.compatibility = null;
      this.status = null;
      this.implementations = null;
      this.preferred = null;
      this.icon = null;
      this.public_interface = null;
      this.public_parameters = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('display_name')) {
        this.display_name = initObj.display_name
      }
      else {
        this.display_name = '';
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('compatibility')) {
        this.compatibility = initObj.compatibility
      }
      else {
        this.compatibility = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
      if (initObj.hasOwnProperty('implementations')) {
        this.implementations = initObj.implementations
      }
      else {
        this.implementations = [];
      }
      if (initObj.hasOwnProperty('preferred')) {
        this.preferred = initObj.preferred
      }
      else {
        this.preferred = '';
      }
      if (initObj.hasOwnProperty('icon')) {
        this.icon = initObj.icon
      }
      else {
        this.icon = new rocon_std_msgs.msg.Icon();
      }
      if (initObj.hasOwnProperty('public_interface')) {
        this.public_interface = initObj.public_interface
      }
      else {
        this.public_interface = [];
      }
      if (initObj.hasOwnProperty('public_parameters')) {
        this.public_parameters = initObj.public_parameters
      }
      else {
        this.public_parameters = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Rapp
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [display_name]
    bufferOffset = _serializer.string(obj.display_name, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [compatibility]
    bufferOffset = _serializer.string(obj.compatibility, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [implementations]
    bufferOffset = _arraySerializer.string(obj.implementations, buffer, bufferOffset, null);
    // Serialize message field [preferred]
    bufferOffset = _serializer.string(obj.preferred, buffer, bufferOffset);
    // Serialize message field [icon]
    bufferOffset = rocon_std_msgs.msg.Icon.serialize(obj.icon, buffer, bufferOffset);
    // Serialize message field [public_interface]
    // Serialize the length for message field [public_interface]
    bufferOffset = _serializer.uint32(obj.public_interface.length, buffer, bufferOffset);
    obj.public_interface.forEach((val) => {
      bufferOffset = rocon_std_msgs.msg.KeyValue.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [public_parameters]
    // Serialize the length for message field [public_parameters]
    bufferOffset = _serializer.uint32(obj.public_parameters.length, buffer, bufferOffset);
    obj.public_parameters.forEach((val) => {
      bufferOffset = rocon_std_msgs.msg.KeyValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Rapp
    let len;
    let data = new Rapp(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [display_name]
    data.display_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [compatibility]
    data.compatibility = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [implementations]
    data.implementations = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [preferred]
    data.preferred = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [icon]
    data.icon = rocon_std_msgs.msg.Icon.deserialize(buffer, bufferOffset);
    // Deserialize message field [public_interface]
    // Deserialize array length for message field [public_interface]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.public_interface = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.public_interface[i] = rocon_std_msgs.msg.KeyValue.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [public_parameters]
    // Deserialize array length for message field [public_parameters]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.public_parameters = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.public_parameters[i] = rocon_std_msgs.msg.KeyValue.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.display_name.length;
    length += object.description.length;
    length += object.compatibility.length;
    length += object.status.length;
    object.implementations.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.preferred.length;
    length += rocon_std_msgs.msg.Icon.getMessageSize(object.icon);
    object.public_interface.forEach((val) => {
      length += rocon_std_msgs.msg.KeyValue.getMessageSize(val);
    });
    object.public_parameters.forEach((val) => {
      length += rocon_std_msgs.msg.KeyValue.getMessageSize(val);
    });
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_app_manager_msgs/Rapp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0214a3ee298e9d3ae08c6ab15b8e910d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This is the message that gets published in list_rapps. Do not think of it as the
    # 'rapp' definition (since that is quite varied -> ancestor, virtual, child, implementation)
    # Rather it is the published list of rapps with the required information for the concert
    # and some introspection.
    
    # app name (ros resource name format, i.e. pkg/name, e.g. turtle_concert/teleop)
    string name
    # user-friendly display name
    string display_name
    string description
    # a rocon uri string indicating platform compatibility
    string compatibility
    string status
    
    # a list of implementations
    string[] implementations
    
    # A preferred rapp for virtual rapp
    string preferred
    
    # icon for showing the app
    rocon_std_msgs/Icon icon
    
    # public interface and parameters
    rocon_std_msgs/KeyValue[] public_interface
    rocon_std_msgs/KeyValue[] public_parameters
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Rapp(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.display_name !== undefined) {
      resolved.display_name = msg.display_name;
    }
    else {
      resolved.display_name = ''
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.compatibility !== undefined) {
      resolved.compatibility = msg.compatibility;
    }
    else {
      resolved.compatibility = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    if (msg.implementations !== undefined) {
      resolved.implementations = msg.implementations;
    }
    else {
      resolved.implementations = []
    }

    if (msg.preferred !== undefined) {
      resolved.preferred = msg.preferred;
    }
    else {
      resolved.preferred = ''
    }

    if (msg.icon !== undefined) {
      resolved.icon = rocon_std_msgs.msg.Icon.Resolve(msg.icon)
    }
    else {
      resolved.icon = new rocon_std_msgs.msg.Icon()
    }

    if (msg.public_interface !== undefined) {
      resolved.public_interface = new Array(msg.public_interface.length);
      for (let i = 0; i < resolved.public_interface.length; ++i) {
        resolved.public_interface[i] = rocon_std_msgs.msg.KeyValue.Resolve(msg.public_interface[i]);
      }
    }
    else {
      resolved.public_interface = []
    }

    if (msg.public_parameters !== undefined) {
      resolved.public_parameters = new Array(msg.public_parameters.length);
      for (let i = 0; i < resolved.public_parameters.length; ++i) {
        resolved.public_parameters[i] = rocon_std_msgs.msg.KeyValue.Resolve(msg.public_parameters[i]);
      }
    }
    else {
      resolved.public_parameters = []
    }

    return resolved;
    }
};

module.exports = Rapp;
