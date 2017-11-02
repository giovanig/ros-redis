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

let Pairing = require('../msg/Pairing.js');

//-----------------------------------------------------------

class GetPairingsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPairingsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPairingsRequest
    let len;
    let data = new GetPairingsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rocon_interaction_msgs/GetPairingsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPairingsRequest(null);
    return resolved;
    }
};

class GetPairingsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pairings = null;
    }
    else {
      if (initObj.hasOwnProperty('pairings')) {
        this.pairings = initObj.pairings
      }
      else {
        this.pairings = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPairingsResponse
    // Serialize message field [pairings]
    // Serialize the length for message field [pairings]
    bufferOffset = _serializer.uint32(obj.pairings.length, buffer, bufferOffset);
    obj.pairings.forEach((val) => {
      bufferOffset = Pairing.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPairingsResponse
    let len;
    let data = new GetPairingsResponse(null);
    // Deserialize message field [pairings]
    // Deserialize array length for message field [pairings]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pairings = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pairings[i] = Pairing.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.pairings.forEach((val) => {
      length += Pairing.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rocon_interaction_msgs/GetPairingsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd29a833c93f116257b8e089a802ebf98';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Pairing[] pairings
    
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPairingsResponse(null);
    if (msg.pairings !== undefined) {
      resolved.pairings = new Array(msg.pairings.length);
      for (let i = 0; i < resolved.pairings.length; ++i) {
        resolved.pairings[i] = Pairing.Resolve(msg.pairings[i]);
      }
    }
    else {
      resolved.pairings = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetPairingsRequest,
  Response: GetPairingsResponse,
  md5sum() { return 'd29a833c93f116257b8e089a802ebf98'; },
  datatype() { return 'rocon_interaction_msgs/GetPairings'; }
};
