// Auto-generated. Do not edit!

// (in-package rocon_device_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Hue = require('./Hue.js');

//-----------------------------------------------------------

class HueArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hue_list = null;
    }
    else {
      if (initObj.hasOwnProperty('hue_list')) {
        this.hue_list = initObj.hue_list
      }
      else {
        this.hue_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HueArray
    // Serialize message field [hue_list]
    // Serialize the length for message field [hue_list]
    bufferOffset = _serializer.uint32(obj.hue_list.length, buffer, bufferOffset);
    obj.hue_list.forEach((val) => {
      bufferOffset = Hue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HueArray
    let len;
    let data = new HueArray(null);
    // Deserialize message field [hue_list]
    // Deserialize array length for message field [hue_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.hue_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.hue_list[i] = Hue.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.hue_list.forEach((val) => {
      length += Hue.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_device_msgs/HueArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ac7d5d01d5d83c6c14384ec4d7c8d7da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Hue[] hue_list
    
    ================================================================================
    MSG: rocon_device_msgs/Hue
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
    const resolved = new HueArray(null);
    if (msg.hue_list !== undefined) {
      resolved.hue_list = new Array(msg.hue_list.length);
      for (let i = 0; i < resolved.hue_list.length; ++i) {
        resolved.hue_list[i] = Hue.Resolve(msg.hue_list[i]);
      }
    }
    else {
      resolved.hue_list = []
    }

    return resolved;
    }
};

module.exports = HueArray;
