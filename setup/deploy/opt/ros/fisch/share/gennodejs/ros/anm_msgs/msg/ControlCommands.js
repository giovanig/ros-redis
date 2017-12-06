// Auto-generated. Do not edit!

// (in-package anm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let dbw_mkz_msgs = _finder('dbw_mkz_msgs');

//-----------------------------------------------------------

class ControlCommands {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.steering_pos_cmd = null;
      this.steering_vel_cmd = null;
      this.steering_EN = null;
      this.throttle_cmd = null;
      this.throttle_EN = null;
      this.brake_cmd = null;
      this.brake_EN = null;
      this.gear_cmd = null;
      this.turn_signal_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('steering_pos_cmd')) {
        this.steering_pos_cmd = initObj.steering_pos_cmd
      }
      else {
        this.steering_pos_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('steering_vel_cmd')) {
        this.steering_vel_cmd = initObj.steering_vel_cmd
      }
      else {
        this.steering_vel_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('steering_EN')) {
        this.steering_EN = initObj.steering_EN
      }
      else {
        this.steering_EN = 0;
      }
      if (initObj.hasOwnProperty('throttle_cmd')) {
        this.throttle_cmd = initObj.throttle_cmd
      }
      else {
        this.throttle_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('throttle_EN')) {
        this.throttle_EN = initObj.throttle_EN
      }
      else {
        this.throttle_EN = 0;
      }
      if (initObj.hasOwnProperty('brake_cmd')) {
        this.brake_cmd = initObj.brake_cmd
      }
      else {
        this.brake_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('brake_EN')) {
        this.brake_EN = initObj.brake_EN
      }
      else {
        this.brake_EN = 0;
      }
      if (initObj.hasOwnProperty('gear_cmd')) {
        this.gear_cmd = initObj.gear_cmd
      }
      else {
        this.gear_cmd = new dbw_mkz_msgs.msg.Gear();
      }
      if (initObj.hasOwnProperty('turn_signal_cmd')) {
        this.turn_signal_cmd = initObj.turn_signal_cmd
      }
      else {
        this.turn_signal_cmd = new dbw_mkz_msgs.msg.TurnSignal();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlCommands
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [steering_pos_cmd]
    bufferOffset = _serializer.float32(obj.steering_pos_cmd, buffer, bufferOffset);
    // Serialize message field [steering_vel_cmd]
    bufferOffset = _serializer.float32(obj.steering_vel_cmd, buffer, bufferOffset);
    // Serialize message field [steering_EN]
    bufferOffset = _serializer.uint8(obj.steering_EN, buffer, bufferOffset);
    // Serialize message field [throttle_cmd]
    bufferOffset = _serializer.float32(obj.throttle_cmd, buffer, bufferOffset);
    // Serialize message field [throttle_EN]
    bufferOffset = _serializer.uint8(obj.throttle_EN, buffer, bufferOffset);
    // Serialize message field [brake_cmd]
    bufferOffset = _serializer.float32(obj.brake_cmd, buffer, bufferOffset);
    // Serialize message field [brake_EN]
    bufferOffset = _serializer.uint8(obj.brake_EN, buffer, bufferOffset);
    // Serialize message field [gear_cmd]
    bufferOffset = dbw_mkz_msgs.msg.Gear.serialize(obj.gear_cmd, buffer, bufferOffset);
    // Serialize message field [turn_signal_cmd]
    bufferOffset = dbw_mkz_msgs.msg.TurnSignal.serialize(obj.turn_signal_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlCommands
    let len;
    let data = new ControlCommands(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [steering_pos_cmd]
    data.steering_pos_cmd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steering_vel_cmd]
    data.steering_vel_cmd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steering_EN]
    data.steering_EN = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [throttle_cmd]
    data.throttle_cmd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [throttle_EN]
    data.throttle_EN = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brake_cmd]
    data.brake_cmd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake_EN]
    data.brake_EN = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gear_cmd]
    data.gear_cmd = dbw_mkz_msgs.msg.Gear.deserialize(buffer, bufferOffset);
    // Deserialize message field [turn_signal_cmd]
    data.turn_signal_cmd = dbw_mkz_msgs.msg.TurnSignal.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/ControlCommands';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0e12956f02b3e297a2b3e14ba7b4c6b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message defines all control commands required to control the vehicle
    
    Header header
    
    # Steering Wheel
    float32 steering_pos_cmd # (rad)
    float32 steering_vel_cmd # (rad/s)
    uint8 steering_EN
    
    # Throttle
    float32 throttle_cmd # (percent) from 0.0 to 1.0
    uint8 throttle_EN
    
    # Brake
    float32 brake_cmd # (Nm) torque from 0.0 to 3450.0
    uint8 brake_EN
    
    # Gear
    dbw_mkz_msgs/Gear gear_cmd
    
    # Turn signal
    dbw_mkz_msgs/TurnSignal turn_signal_cmd
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: dbw_mkz_msgs/Gear
    uint8 gear
    
    uint8 NONE=0
    uint8 PARK=1
    uint8 REVERSE=2
    uint8 NEUTRAL=3
    uint8 DRIVE=4
    uint8 LOW=5
    
    ================================================================================
    MSG: dbw_mkz_msgs/TurnSignal
    uint8 value
    
    uint8 NONE=0
    uint8 LEFT=1
    uint8 RIGHT=2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlCommands(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.steering_pos_cmd !== undefined) {
      resolved.steering_pos_cmd = msg.steering_pos_cmd;
    }
    else {
      resolved.steering_pos_cmd = 0.0
    }

    if (msg.steering_vel_cmd !== undefined) {
      resolved.steering_vel_cmd = msg.steering_vel_cmd;
    }
    else {
      resolved.steering_vel_cmd = 0.0
    }

    if (msg.steering_EN !== undefined) {
      resolved.steering_EN = msg.steering_EN;
    }
    else {
      resolved.steering_EN = 0
    }

    if (msg.throttle_cmd !== undefined) {
      resolved.throttle_cmd = msg.throttle_cmd;
    }
    else {
      resolved.throttle_cmd = 0.0
    }

    if (msg.throttle_EN !== undefined) {
      resolved.throttle_EN = msg.throttle_EN;
    }
    else {
      resolved.throttle_EN = 0
    }

    if (msg.brake_cmd !== undefined) {
      resolved.brake_cmd = msg.brake_cmd;
    }
    else {
      resolved.brake_cmd = 0.0
    }

    if (msg.brake_EN !== undefined) {
      resolved.brake_EN = msg.brake_EN;
    }
    else {
      resolved.brake_EN = 0
    }

    if (msg.gear_cmd !== undefined) {
      resolved.gear_cmd = dbw_mkz_msgs.msg.Gear.Resolve(msg.gear_cmd)
    }
    else {
      resolved.gear_cmd = new dbw_mkz_msgs.msg.Gear()
    }

    if (msg.turn_signal_cmd !== undefined) {
      resolved.turn_signal_cmd = dbw_mkz_msgs.msg.TurnSignal.Resolve(msg.turn_signal_cmd)
    }
    else {
      resolved.turn_signal_cmd = new dbw_mkz_msgs.msg.TurnSignal()
    }

    return resolved;
    }
};

module.exports = ControlCommands;
