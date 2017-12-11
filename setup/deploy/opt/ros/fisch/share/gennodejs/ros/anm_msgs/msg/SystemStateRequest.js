// Auto-generated. Do not edit!

// (in-package anm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SystemState = require('./SystemState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SystemStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.state_request = null;
      this.new_state = null;
      this.other_request = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('state_request')) {
        this.state_request = initObj.state_request
      }
      else {
        this.state_request = false;
      }
      if (initObj.hasOwnProperty('new_state')) {
        this.new_state = initObj.new_state
      }
      else {
        this.new_state = new SystemState();
      }
      if (initObj.hasOwnProperty('other_request')) {
        this.other_request = initObj.other_request
      }
      else {
        this.other_request = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemStateRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [state_request]
    bufferOffset = _serializer.bool(obj.state_request, buffer, bufferOffset);
    // Serialize message field [new_state]
    bufferOffset = SystemState.serialize(obj.new_state, buffer, bufferOffset);
    // Serialize message field [other_request]
    bufferOffset = _serializer.uint8(obj.other_request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemStateRequest
    let len;
    let data = new SystemStateRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [state_request]
    data.state_request = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [new_state]
    data.new_state = SystemState.deserialize(buffer, bufferOffset);
    // Deserialize message field [other_request]
    data.other_request = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += SystemState.getMessageSize(object.new_state);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/SystemStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0c64e8ff4ef392d8b8f1e28448c86939';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message indicates the requests for the system supervisor
    
    # Other requests:
    uint8 SYS_REQ_SIMULATE_FAIL_STACK = 101
    uint8 SYS_REQ_NONE = 127
    
    # Message definition
    Header header
    bool state_request          # request for a state change or something else
    SystemState new_state       # new state request (if state_request = true)
    uint8 other_request         # other request (if state request = false)
    
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
    MSG: anm_msgs/SystemState
    # This message contains the current state of the autonomous system
    # Detailed documentation can be found in google drive under the
    # architecture/system supervisor folder
    
    # The following constants are used to define the states
    uint8 ST_OFF = 0         # in manual mode - system is off
    uint8 ST_STANDBY = 1     # in manual mode - system is ready to go to auto mode
    uint8 ST_NOT_READY = 2   # in manual mode - system is not ready to go auto mode
    uint8 ST_PARKED = 3      # in auto mode - system is autonomously parked
    uint8 ST_DRIVE = 4       # in auto mode - system is autonomously driving
    uint8 ST_ENAVIGATION = 5 # in auto mode - system is emergency navigation
    uint8 ST_FINDPARKING = 6 # in auto mode - system is finding parking
    uint8 ST_PLATOONING  = 7 # in auto mode - system is platooning
    uint8 ST_EPULLOVER  = 8  # in auto mode - system is emergency pullover
    uint8 ST_REVERSE_PARK = 9  # in auto mode - system is reverse parking
    
    # Message definition
    Header header
    uint8 state             # the state of the system
    uint8 envchks           # environment ready checks - 0 = fail, 1 = pass
    uint8 syschks           # hardware/software ready checks - 0 = fail, 1 = pass
    uint8 navptschks        # is there navigation points currently? 0 = no, 1 = yes
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SystemStateRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.state_request !== undefined) {
      resolved.state_request = msg.state_request;
    }
    else {
      resolved.state_request = false
    }

    if (msg.new_state !== undefined) {
      resolved.new_state = SystemState.Resolve(msg.new_state)
    }
    else {
      resolved.new_state = new SystemState()
    }

    if (msg.other_request !== undefined) {
      resolved.other_request = msg.other_request;
    }
    else {
      resolved.other_request = 0
    }

    return resolved;
    }
};

// Constants for message
SystemStateRequest.Constants = {
  SYS_REQ_SIMULATE_FAIL_STACK: 101,
  SYS_REQ_NONE: 127,
}

module.exports = SystemStateRequest;
