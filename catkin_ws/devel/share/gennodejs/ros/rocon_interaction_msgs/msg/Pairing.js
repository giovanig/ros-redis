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

class Pairing {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.group = null;
      this.rapp = null;
      this.description = null;
      this.requires_interaction = null;
      this.icon = null;
      this.remappings = null;
      this.parameters = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('group')) {
        this.group = initObj.group
      }
      else {
        this.group = '';
      }
      if (initObj.hasOwnProperty('rapp')) {
        this.rapp = initObj.rapp
      }
      else {
        this.rapp = '';
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('requires_interaction')) {
        this.requires_interaction = initObj.requires_interaction
      }
      else {
        this.requires_interaction = '';
      }
      if (initObj.hasOwnProperty('icon')) {
        this.icon = initObj.icon
      }
      else {
        this.icon = new rocon_std_msgs.msg.Icon();
      }
      if (initObj.hasOwnProperty('remappings')) {
        this.remappings = initObj.remappings
      }
      else {
        this.remappings = [];
      }
      if (initObj.hasOwnProperty('parameters')) {
        this.parameters = initObj.parameters
      }
      else {
        this.parameters = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pairing
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [group]
    bufferOffset = _serializer.string(obj.group, buffer, bufferOffset);
    // Serialize message field [rapp]
    bufferOffset = _serializer.string(obj.rapp, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [requires_interaction]
    bufferOffset = _serializer.string(obj.requires_interaction, buffer, bufferOffset);
    // Serialize message field [icon]
    bufferOffset = rocon_std_msgs.msg.Icon.serialize(obj.icon, buffer, bufferOffset);
    // Serialize message field [remappings]
    // Serialize the length for message field [remappings]
    bufferOffset = _serializer.uint32(obj.remappings.length, buffer, bufferOffset);
    obj.remappings.forEach((val) => {
      bufferOffset = rocon_std_msgs.msg.Remapping.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [parameters]
    // Serialize the length for message field [parameters]
    bufferOffset = _serializer.uint32(obj.parameters.length, buffer, bufferOffset);
    obj.parameters.forEach((val) => {
      bufferOffset = rocon_std_msgs.msg.KeyValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pairing
    let len;
    let data = new Pairing(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [group]
    data.group = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rapp]
    data.rapp = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [requires_interaction]
    data.requires_interaction = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [icon]
    data.icon = rocon_std_msgs.msg.Icon.deserialize(buffer, bufferOffset);
    // Deserialize message field [remappings]
    // Deserialize array length for message field [remappings]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.remappings = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.remappings[i] = rocon_std_msgs.msg.Remapping.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [parameters]
    // Deserialize array length for message field [parameters]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.parameters = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.parameters[i] = rocon_std_msgs.msg.KeyValue.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.group.length;
    length += object.rapp.length;
    length += object.description.length;
    length += object.requires_interaction.length;
    length += rocon_std_msgs.msg.Icon.getMessageSize(object.icon);
    object.remappings.forEach((val) => {
      length += rocon_std_msgs.msg.Remapping.getMessageSize(val);
    });
    object.parameters.forEach((val) => {
      length += rocon_std_msgs.msg.KeyValue.getMessageSize(val);
    });
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_interaction_msgs/Pairing';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1dae0009f23a860ae843f68089b76ed0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ###############################################################
    # Pairing rapp specification
    ###############################################################
    
    # Unique name that represents this pairing. Note that you can
    # have multiple configurations of a single rapp, so the rapp
    # name alone is not enough to uniquely identify the pairing
    string name
    
    # Group to which this pairing belongs
    string group
    
    # ros resource name of the rapp, e.g. rocon_apps/talker
    string rapp
    
    ###############################################################
    # Customising the rapp launch instance
    ###############################################################
    
    # Can load the default rapp description, but sometimes useful to
    # override it to provide more human friendly information.
    string description
    
    # Whether or not this rapp should bringup/teardown an interaction
    # with the launching of this rapp. If empty, no interaction is
    # required, if non-empty, look for the specified interaction.
    string requires_interaction
    
    # Again, can load the default rapp icon, but may want to override it.
    rocon_std_msgs/Icon icon
    
    rocon_std_msgs/Remapping[] remappings
    
    # Key value pairs representing rapp parameters
    rocon_std_msgs/KeyValue[] parameters
    
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
    MSG: rocon_std_msgs/Remapping
    # Describes your typical ros remapping
    
    string remap_from
    string remap_to
    
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
    const resolved = new Pairing(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.group !== undefined) {
      resolved.group = msg.group;
    }
    else {
      resolved.group = ''
    }

    if (msg.rapp !== undefined) {
      resolved.rapp = msg.rapp;
    }
    else {
      resolved.rapp = ''
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.requires_interaction !== undefined) {
      resolved.requires_interaction = msg.requires_interaction;
    }
    else {
      resolved.requires_interaction = ''
    }

    if (msg.icon !== undefined) {
      resolved.icon = rocon_std_msgs.msg.Icon.Resolve(msg.icon)
    }
    else {
      resolved.icon = new rocon_std_msgs.msg.Icon()
    }

    if (msg.remappings !== undefined) {
      resolved.remappings = new Array(msg.remappings.length);
      for (let i = 0; i < resolved.remappings.length; ++i) {
        resolved.remappings[i] = rocon_std_msgs.msg.Remapping.Resolve(msg.remappings[i]);
      }
    }
    else {
      resolved.remappings = []
    }

    if (msg.parameters !== undefined) {
      resolved.parameters = new Array(msg.parameters.length);
      for (let i = 0; i < resolved.parameters.length; ++i) {
        resolved.parameters[i] = rocon_std_msgs.msg.KeyValue.Resolve(msg.parameters[i]);
      }
    }
    else {
      resolved.parameters = []
    }

    return resolved;
    }
};

module.exports = Pairing;
