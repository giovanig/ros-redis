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

class GetInteractionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hash = null;
    }
    else {
      if (initObj.hasOwnProperty('hash')) {
        this.hash = initObj.hash
      }
      else {
        this.hash = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetInteractionRequest
    // Serialize message field [hash]
    bufferOffset = _serializer.int32(obj.hash, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetInteractionRequest
    let len;
    let data = new GetInteractionRequest(null);
    // Deserialize message field [hash]
    data.hash = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rocon_interaction_msgs/GetInteractionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bff57ffe69467a2a244fb9a7d371e074';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    int32 hash
    
    
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetInteractionRequest(null);
    if (msg.hash !== undefined) {
      resolved.hash = msg.hash;
    }
    else {
      resolved.hash = 0
    }

    return resolved;
    }
};

class GetInteractionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.interaction = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('interaction')) {
        this.interaction = initObj.interaction
      }
      else {
        this.interaction = new Interaction();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetInteractionResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [interaction]
    bufferOffset = Interaction.serialize(obj.interaction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetInteractionResponse
    let len;
    let data = new GetInteractionResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [interaction]
    data.interaction = Interaction.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Interaction.getMessageSize(object.interaction);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rocon_interaction_msgs/GetInteractionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '730b47a222589a77630b6049fd0ab1b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool result
    Interaction interaction
    
    
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
    const resolved = new GetInteractionResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.interaction !== undefined) {
      resolved.interaction = Interaction.Resolve(msg.interaction)
    }
    else {
      resolved.interaction = new Interaction()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetInteractionRequest,
  Response: GetInteractionResponse,
  md5sum() { return '99b98a8efcdde2712b480273db0f877e'; },
  datatype() { return 'rocon_interaction_msgs/GetInteraction'; }
};
