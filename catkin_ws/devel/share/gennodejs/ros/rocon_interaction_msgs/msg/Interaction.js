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

class Interaction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.command = null;
      this.compatibility = null;
      this.group = null;
      this.description = null;
      this.icon = null;
      this.namespace = null;
      this.remappings = null;
      this.parameters = null;
      this.max = null;
      this.bringup_pairing = null;
      this.teardown_pairing = null;
      this.required_pairings = null;
      this.hidden = null;
      this.hash = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
      }
      if (initObj.hasOwnProperty('compatibility')) {
        this.compatibility = initObj.compatibility
      }
      else {
        this.compatibility = '';
      }
      if (initObj.hasOwnProperty('group')) {
        this.group = initObj.group
      }
      else {
        this.group = '';
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('icon')) {
        this.icon = initObj.icon
      }
      else {
        this.icon = new rocon_std_msgs.msg.Icon();
      }
      if (initObj.hasOwnProperty('namespace')) {
        this.namespace = initObj.namespace
      }
      else {
        this.namespace = '';
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
        this.parameters = '';
      }
      if (initObj.hasOwnProperty('max')) {
        this.max = initObj.max
      }
      else {
        this.max = 0;
      }
      if (initObj.hasOwnProperty('bringup_pairing')) {
        this.bringup_pairing = initObj.bringup_pairing
      }
      else {
        this.bringup_pairing = false;
      }
      if (initObj.hasOwnProperty('teardown_pairing')) {
        this.teardown_pairing = initObj.teardown_pairing
      }
      else {
        this.teardown_pairing = false;
      }
      if (initObj.hasOwnProperty('required_pairings')) {
        this.required_pairings = initObj.required_pairings
      }
      else {
        this.required_pairings = [];
      }
      if (initObj.hasOwnProperty('hidden')) {
        this.hidden = initObj.hidden
      }
      else {
        this.hidden = false;
      }
      if (initObj.hasOwnProperty('hash')) {
        this.hash = initObj.hash
      }
      else {
        this.hash = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Interaction
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    // Serialize message field [compatibility]
    bufferOffset = _serializer.string(obj.compatibility, buffer, bufferOffset);
    // Serialize message field [group]
    bufferOffset = _serializer.string(obj.group, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [icon]
    bufferOffset = rocon_std_msgs.msg.Icon.serialize(obj.icon, buffer, bufferOffset);
    // Serialize message field [namespace]
    bufferOffset = _serializer.string(obj.namespace, buffer, bufferOffset);
    // Serialize message field [remappings]
    // Serialize the length for message field [remappings]
    bufferOffset = _serializer.uint32(obj.remappings.length, buffer, bufferOffset);
    obj.remappings.forEach((val) => {
      bufferOffset = rocon_std_msgs.msg.Remapping.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [parameters]
    bufferOffset = _serializer.string(obj.parameters, buffer, bufferOffset);
    // Serialize message field [max]
    bufferOffset = _serializer.int32(obj.max, buffer, bufferOffset);
    // Serialize message field [bringup_pairing]
    bufferOffset = _serializer.bool(obj.bringup_pairing, buffer, bufferOffset);
    // Serialize message field [teardown_pairing]
    bufferOffset = _serializer.bool(obj.teardown_pairing, buffer, bufferOffset);
    // Serialize message field [required_pairings]
    bufferOffset = _arraySerializer.string(obj.required_pairings, buffer, bufferOffset, null);
    // Serialize message field [hidden]
    bufferOffset = _serializer.bool(obj.hidden, buffer, bufferOffset);
    // Serialize message field [hash]
    bufferOffset = _serializer.int32(obj.hash, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Interaction
    let len;
    let data = new Interaction(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [compatibility]
    data.compatibility = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [group]
    data.group = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [icon]
    data.icon = rocon_std_msgs.msg.Icon.deserialize(buffer, bufferOffset);
    // Deserialize message field [namespace]
    data.namespace = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [remappings]
    // Deserialize array length for message field [remappings]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.remappings = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.remappings[i] = rocon_std_msgs.msg.Remapping.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [parameters]
    data.parameters = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [max]
    data.max = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [bringup_pairing]
    data.bringup_pairing = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [teardown_pairing]
    data.teardown_pairing = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [required_pairings]
    data.required_pairings = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [hidden]
    data.hidden = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [hash]
    data.hash = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.command.length;
    length += object.compatibility.length;
    length += object.group.length;
    length += object.description.length;
    length += rocon_std_msgs.msg.Icon.getMessageSize(object.icon);
    length += object.namespace.length;
    object.remappings.forEach((val) => {
      length += rocon_std_msgs.msg.Remapping.getMessageSize(val);
    });
    length += object.parameters.length;
    object.required_pairings.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 47;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_interaction_msgs/Interaction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '654684c49f3d36d7af7c76c44f9b80e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ###############################################################
    # Required Specifications
    ###############################################################
    
    # User friendly version of the name. Useful to be customised
    # differently from the name for either 1) branding, or 2) because
    # some names are complicated visually (e.g. android names).
    string name
    
    # This should be the string required to install and execute
    # the interaction from a remocon. 
    # - android app : the intent action name (e.g. com.github.rosjava.android_apps.listener.Listener)
    # - web app : the url
    # - roslaunch : package resource name (e.g. gopher_meta/minimal.launch)
    # - rosrun : package resource name (e.g. gopher_meta/enable_motors)
    # - global : just the executable (e.g. rocon_master_info)
    string command
    
    # A rocon uri string denoting the platforms this interaction
    # is compatible with
    string compatibility
    
    ###############################################################
    # Optional Specifications
    ###############################################################
    
    # The group this solution has configured the interaction for.
    string group
    
    # Should be a default for the interaction, but sometimes useful to
    # override it to provide more human friendly information.
    string description
    
    # Again, should exist a default, but may want to override it.
    rocon_std_msgs/Icon icon
    
    # The namespace that this interaction will be associated
    # with. Interfaces from the interaction will be automatically pushed
    # into this namespace (for concerts it will be typically
    # used by the services to push interfaces into /services/_service_name_).
    # It is up to the user to make sure this is unique to avoid
    # potential conflicts.
    string namespace
    
    # Any remappings that need to be applied
    rocon_std_msgs/Remapping[] remappings
    
    # Yaml string representing parameters for the interaction
    string parameters
    
    # Maximum number of permitted connections (-1 = any)
    int32 UNLIMITED_INTERACTIONS = -1
    int32 max
    
    # If it should be paired with launch configurations via rapps
    bool bringup_pairing
    bool teardown_pairing
    string[] required_pairings
    
    # whether it should be a hidden icon in a remocon
    bool hidden
    
    ###############################################################
    # Parameters finalised by the interactions manager
    ###############################################################
    
    # This is a crc32 hash code for the name-group-command
    # triple that uniquely identifies this interaction.
    # crc32 gets a few collisions, so we should be careful of that.
    # It is used by the nfc android auto-launching program so we can
    # compactify the request in the url sent by the nfc to the autolauncher.
    int32 hash
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Interaction(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    if (msg.compatibility !== undefined) {
      resolved.compatibility = msg.compatibility;
    }
    else {
      resolved.compatibility = ''
    }

    if (msg.group !== undefined) {
      resolved.group = msg.group;
    }
    else {
      resolved.group = ''
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.icon !== undefined) {
      resolved.icon = rocon_std_msgs.msg.Icon.Resolve(msg.icon)
    }
    else {
      resolved.icon = new rocon_std_msgs.msg.Icon()
    }

    if (msg.namespace !== undefined) {
      resolved.namespace = msg.namespace;
    }
    else {
      resolved.namespace = ''
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
      resolved.parameters = msg.parameters;
    }
    else {
      resolved.parameters = ''
    }

    if (msg.max !== undefined) {
      resolved.max = msg.max;
    }
    else {
      resolved.max = 0
    }

    if (msg.bringup_pairing !== undefined) {
      resolved.bringup_pairing = msg.bringup_pairing;
    }
    else {
      resolved.bringup_pairing = false
    }

    if (msg.teardown_pairing !== undefined) {
      resolved.teardown_pairing = msg.teardown_pairing;
    }
    else {
      resolved.teardown_pairing = false
    }

    if (msg.required_pairings !== undefined) {
      resolved.required_pairings = msg.required_pairings;
    }
    else {
      resolved.required_pairings = []
    }

    if (msg.hidden !== undefined) {
      resolved.hidden = msg.hidden;
    }
    else {
      resolved.hidden = false
    }

    if (msg.hash !== undefined) {
      resolved.hash = msg.hash;
    }
    else {
      resolved.hash = 0
    }

    return resolved;
    }
};

// Constants for message
Interaction.Constants = {
  UNLIMITED_INTERACTIONS: -1,
}

module.exports = Interaction;
