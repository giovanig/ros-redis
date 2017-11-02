// Auto-generated. Do not edit!

// (in-package rocon_interaction_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let Interaction = require('../msg/Interaction.js');

//-----------------------------------------------------------

class GetInteractionsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.groups = null;
      this.uri = null;
      this.runtime_pairing_requirements = null;
    }
    else {
      if (initObj.hasOwnProperty('groups')) {
        this.groups = initObj.groups
      }
      else {
        this.groups = [];
      }
      if (initObj.hasOwnProperty('uri')) {
        this.uri = initObj.uri
      }
      else {
        this.uri = '';
      }
      if (initObj.hasOwnProperty('runtime_pairing_requirements')) {
        this.runtime_pairing_requirements = initObj.runtime_pairing_requirements
      }
      else {
        this.runtime_pairing_requirements = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetInteractionsRequest
    // Serialize message field [groups]
    bufferOffset = _arraySerializer.string(obj.groups, buffer, bufferOffset, null);
    // Serialize message field [uri]
    bufferOffset = _serializer.string(obj.uri, buffer, bufferOffset);
    // Serialize message field [runtime_pairing_requirements]
    bufferOffset = _serializer.bool(obj.runtime_pairing_requirements, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetInteractionsRequest
    let len;
    let data = new GetInteractionsRequest(null);
    // Deserialize message field [groups]
    data.groups = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [uri]
    data.uri = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [runtime_pairing_requirements]
    data.runtime_pairing_requirements = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.groups.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.uri.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rocon_interaction_msgs/GetInteractionsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c6009efeb3aefbb011e98b70f91471a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    string[] groups
    
    
    
    string uri
    
    
    
    bool runtime_pairing_requirements
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetInteractionsRequest(null);
    if (msg.groups !== undefined) {
      resolved.groups = msg.groups;
    }
    else {
      resolved.groups = []
    }

    if (msg.uri !== undefined) {
      resolved.uri = msg.uri;
    }
    else {
      resolved.uri = ''
    }

    if (msg.runtime_pairing_requirements !== undefined) {
      resolved.runtime_pairing_requirements = msg.runtime_pairing_requirements;
    }
    else {
      resolved.runtime_pairing_requirements = false
    }

    return resolved;
    }
};

class GetInteractionsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.interactions = null;
    }
    else {
      if (initObj.hasOwnProperty('interactions')) {
        this.interactions = initObj.interactions
      }
      else {
        this.interactions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetInteractionsResponse
    // Serialize message field [interactions]
    // Serialize the length for message field [interactions]
    bufferOffset = _serializer.uint32(obj.interactions.length, buffer, bufferOffset);
    obj.interactions.forEach((val) => {
      bufferOffset = Interaction.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetInteractionsResponse
    let len;
    let data = new GetInteractionsResponse(null);
    // Deserialize message field [interactions]
    // Deserialize array length for message field [interactions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.interactions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.interactions[i] = Interaction.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.interactions.forEach((val) => {
      length += Interaction.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rocon_interaction_msgs/GetInteractionsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89b0200956b1bc27d494d1f8e0e2854b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Interaction[] interactions
    
    
    ================================================================================
    MSG: rocon_interaction_msgs/Interaction
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
    const resolved = new GetInteractionsResponse(null);
    if (msg.interactions !== undefined) {
      resolved.interactions = new Array(msg.interactions.length);
      for (let i = 0; i < resolved.interactions.length; ++i) {
        resolved.interactions[i] = Interaction.Resolve(msg.interactions[i]);
      }
    }
    else {
      resolved.interactions = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetInteractionsRequest,
  Response: GetInteractionsResponse,
  md5sum() { return '29cae877616bc28e4027dbb93af2e9bd'; },
  datatype() { return 'rocon_interaction_msgs/GetInteractions'; }
};
