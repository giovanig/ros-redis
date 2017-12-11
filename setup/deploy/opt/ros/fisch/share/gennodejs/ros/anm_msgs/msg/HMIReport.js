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

//-----------------------------------------------------------

class HMIReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.request = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('request')) {
        this.request = initObj.request
      }
      else {
        this.request = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HMIReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [request]
    bufferOffset = _serializer.uint8(obj.request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HMIReport
    let len;
    let data = new HMIReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [request]
    data.request = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/HMIReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b9053208a0924d8bbe1073b5b6cbebfb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message indicates the requests from the HMI
    
    # Defined modes:
    uint8 HMI_REQ_MANUAL = 0
    uint8 HMI_REQ_STOP_AND_PARK = 1
    uint8 HMI_REQ_FIND_PARKING = 2
    uint8 HMI_REQ_DRIVE_ROUTE = 3
    uint8 HMI_REQ_DRIVE_PLATOONING = 4
    uint8 HMI_REQ_SIMULATE_FAIL_STACK = 101
    uint8 HMI_REQ_FORCE_EMERGENCY_NAV = 102
    uint8 HMI_REQ_FORCE_EMERGENCY_PULLOVER = 103
    uint8 HMI_REQ_INVALID = 126
    uint8 HMI_REQ_NONE = 127
    
    # Message definition
    Header header
    uint8 request
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HMIReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.request !== undefined) {
      resolved.request = msg.request;
    }
    else {
      resolved.request = 0
    }

    return resolved;
    }
};

// Constants for message
HMIReport.Constants = {
  HMI_REQ_MANUAL: 0,
  HMI_REQ_STOP_AND_PARK: 1,
  HMI_REQ_FIND_PARKING: 2,
  HMI_REQ_DRIVE_ROUTE: 3,
  HMI_REQ_DRIVE_PLATOONING: 4,
  HMI_REQ_SIMULATE_FAIL_STACK: 101,
  HMI_REQ_FORCE_EMERGENCY_NAV: 102,
  HMI_REQ_FORCE_EMERGENCY_PULLOVER: 103,
  HMI_REQ_INVALID: 126,
  HMI_REQ_NONE: 127,
}

module.exports = HMIReport;
