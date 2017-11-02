// Auto-generated. Do not edit!

// (in-package rocon_device_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HueState = require('./HueState.js');

//-----------------------------------------------------------

class Hue {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.light_id = null;
      this.type = null;
      this.name = null;
      this.modelid = null;
      this.swvesion = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('light_id')) {
        this.light_id = initObj.light_id
      }
      else {
        this.light_id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('modelid')) {
        this.modelid = initObj.modelid
      }
      else {
        this.modelid = '';
      }
      if (initObj.hasOwnProperty('swvesion')) {
        this.swvesion = initObj.swvesion
      }
      else {
        this.swvesion = '';
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new HueState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Hue
    // Serialize message field [light_id]
    bufferOffset = _serializer.int32(obj.light_id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [modelid]
    bufferOffset = _serializer.string(obj.modelid, buffer, bufferOffset);
    // Serialize message field [swvesion]
    bufferOffset = _serializer.string(obj.swvesion, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = HueState.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Hue
    let len;
    let data = new Hue(null);
    // Deserialize message field [light_id]
    data.light_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [modelid]
    data.modelid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [swvesion]
    data.swvesion = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = HueState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.type.length;
    length += object.name.length;
    length += object.modelid.length;
    length += object.swvesion.length;
    length += HueState.getMessageSize(object.state);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_device_msgs/Hue';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '468758d766494876ea4e198e409600ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 light_id
    string type
    string name
    string modelid
    string swvesion
    HueState state
    ================================================================================
    MSG: rocon_device_msgs/HueState
    #pre-define color
    string OFF = "OFF"
    string WHITE = "WHITE"
    string RED = "RED"
    string GREEN = "GREEN"
    string BLUE = "BLUE"
    string YELLOW = "YELLOW"
    string ORANGE = "ORANGE"
    string MAGENTA = "MAGENTA"
    string VIOLET = "VIOLET"
    
    #light on/off status true:on /false:off
    bool on 
    
    #color coordination in HSV color space 
    #http://en.wikipedia.org/wiki/HSL_and_HSV
    uint16 hue #h
    uint8 sat #s
    uint8 bri #v
    
    #light valid status - valid:on /invalid:off
    bool reachable  
    
    #for set color with pre-define color
    string color
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Hue(null);
    if (msg.light_id !== undefined) {
      resolved.light_id = msg.light_id;
    }
    else {
      resolved.light_id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.modelid !== undefined) {
      resolved.modelid = msg.modelid;
    }
    else {
      resolved.modelid = ''
    }

    if (msg.swvesion !== undefined) {
      resolved.swvesion = msg.swvesion;
    }
    else {
      resolved.swvesion = ''
    }

    if (msg.state !== undefined) {
      resolved.state = HueState.Resolve(msg.state)
    }
    else {
      resolved.state = new HueState()
    }

    return resolved;
    }
};

module.exports = Hue;
