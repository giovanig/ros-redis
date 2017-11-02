// Auto-generated. Do not edit!

// (in-package rocon_device_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HueState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.on = null;
      this.hue = null;
      this.sat = null;
      this.bri = null;
      this.reachable = null;
      this.color = null;
    }
    else {
      if (initObj.hasOwnProperty('on')) {
        this.on = initObj.on
      }
      else {
        this.on = false;
      }
      if (initObj.hasOwnProperty('hue')) {
        this.hue = initObj.hue
      }
      else {
        this.hue = 0;
      }
      if (initObj.hasOwnProperty('sat')) {
        this.sat = initObj.sat
      }
      else {
        this.sat = 0;
      }
      if (initObj.hasOwnProperty('bri')) {
        this.bri = initObj.bri
      }
      else {
        this.bri = 0;
      }
      if (initObj.hasOwnProperty('reachable')) {
        this.reachable = initObj.reachable
      }
      else {
        this.reachable = false;
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HueState
    // Serialize message field [on]
    bufferOffset = _serializer.bool(obj.on, buffer, bufferOffset);
    // Serialize message field [hue]
    bufferOffset = _serializer.uint16(obj.hue, buffer, bufferOffset);
    // Serialize message field [sat]
    bufferOffset = _serializer.uint8(obj.sat, buffer, bufferOffset);
    // Serialize message field [bri]
    bufferOffset = _serializer.uint8(obj.bri, buffer, bufferOffset);
    // Serialize message field [reachable]
    bufferOffset = _serializer.bool(obj.reachable, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = _serializer.string(obj.color, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HueState
    let len;
    let data = new HueState(null);
    // Deserialize message field [on]
    data.on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [hue]
    data.hue = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [sat]
    data.sat = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [bri]
    data.bri = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reachable]
    data.reachable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.color.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_device_msgs/HueState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3fa6578e37628a062177e792a87fa213';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new HueState(null);
    if (msg.on !== undefined) {
      resolved.on = msg.on;
    }
    else {
      resolved.on = false
    }

    if (msg.hue !== undefined) {
      resolved.hue = msg.hue;
    }
    else {
      resolved.hue = 0
    }

    if (msg.sat !== undefined) {
      resolved.sat = msg.sat;
    }
    else {
      resolved.sat = 0
    }

    if (msg.bri !== undefined) {
      resolved.bri = msg.bri;
    }
    else {
      resolved.bri = 0
    }

    if (msg.reachable !== undefined) {
      resolved.reachable = msg.reachable;
    }
    else {
      resolved.reachable = false
    }

    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = ''
    }

    return resolved;
    }
};

// Constants for message
HueState.Constants = {
  OFF: '"OFF"',
  WHITE: '"WHITE"',
  RED: '"RED"',
  GREEN: '"GREEN"',
  BLUE: '"BLUE"',
  YELLOW: '"YELLOW"',
  ORANGE: '"ORANGE"',
  MAGENTA: '"MAGENTA"',
  VIOLET: '"VIOLET"',
}

module.exports = HueState;
