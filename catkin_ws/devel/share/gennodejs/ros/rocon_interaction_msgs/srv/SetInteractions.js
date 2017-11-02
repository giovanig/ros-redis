// Auto-generated. Do not edit!

// (in-package rocon_interaction_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Pairing = require('../msg/Pairing.js');
let Interaction = require('../msg/Interaction.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetInteractionsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pairings = null;
      this.interactions = null;
      this.load = null;
    }
    else {
      if (initObj.hasOwnProperty('pairings')) {
        this.pairings = initObj.pairings
      }
      else {
        this.pairings = [];
      }
      if (initObj.hasOwnProperty('interactions')) {
        this.interactions = initObj.interactions
      }
      else {
        this.interactions = [];
      }
      if (initObj.hasOwnProperty('load')) {
        this.load = initObj.load
      }
      else {
        this.load = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetInteractionsRequest
    // Serialize message field [pairings]
    // Serialize the length for message field [pairings]
    bufferOffset = _serializer.uint32(obj.pairings.length, buffer, bufferOffset);
    obj.pairings.forEach((val) => {
      bufferOffset = Pairing.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [interactions]
    // Serialize the length for message field [interactions]
    bufferOffset = _serializer.uint32(obj.interactions.length, buffer, bufferOffset);
    obj.interactions.forEach((val) => {
      bufferOffset = Interaction.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [load]
    bufferOffset = _serializer.bool(obj.load, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetInteractionsRequest
    let len;
    let data = new SetInteractionsRequest(null);
    // Deserialize message field [pairings]
    // Deserialize array length for message field [pairings]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pairings = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pairings[i] = Pairing.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [interactions]
    // Deserialize array length for message field [interactions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.interactions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.interactions[i] = Interaction.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [load]
    data.load = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.pairings.forEach((val) => {
      length += Pairing.getMessageSize(val);
    });
    object.interactions.forEach((val) => {
      length += Interaction.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rocon_interaction_msgs/SetInteractionsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '321e96679a2f8d92ae0b40dedfb7e193';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    Pairing[] pairings
    Interaction[] interactions
    
    
    bool load
    
    
    ================================================================================
    MSG: rocon_interaction_msgs/Pairing
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
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetInteractionsRequest(null);
    if (msg.pairings !== undefined) {
      resolved.pairings = new Array(msg.pairings.length);
      for (let i = 0; i < resolved.pairings.length; ++i) {
        resolved.pairings[i] = Pairing.Resolve(msg.pairings[i]);
      }
    }
    else {
      resolved.pairings = []
    }

    if (msg.interactions !== undefined) {
      resolved.interactions = new Array(msg.interactions.length);
      for (let i = 0; i < resolved.interactions.length; ++i) {
        resolved.interactions[i] = Interaction.Resolve(msg.interactions[i]);
      }
    }
    else {
      resolved.interactions = []
    }

    if (msg.load !== undefined) {
      resolved.load = msg.load;
    }
    else {
      resolved.load = false
    }

    return resolved;
    }
};

class SetInteractionsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetInteractionsResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetInteractionsResponse
    let len;
    let data = new SetInteractionsResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rocon_interaction_msgs/SetInteractionsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool result
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetInteractionsResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetInteractionsRequest,
  Response: SetInteractionsResponse,
  md5sum() { return 'd25434387362e7f44070be30fb6f2590'; },
  datatype() { return 'rocon_interaction_msgs/SetInteractions'; }
};
