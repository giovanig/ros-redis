// Auto-generated. Do not edit!

// (in-package anm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DOMReport = require('./DOMReport.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SystemHealthReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.system_summary = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('system_summary')) {
        this.system_summary = initObj.system_summary
      }
      else {
        this.system_summary = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemHealthReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [system_summary]
    // Serialize the length for message field [system_summary]
    bufferOffset = _serializer.uint32(obj.system_summary.length, buffer, bufferOffset);
    obj.system_summary.forEach((val) => {
      bufferOffset = DOMReport.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemHealthReport
    let len;
    let data = new SystemHealthReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [system_summary]
    // Deserialize array length for message field [system_summary]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.system_summary = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.system_summary[i] = DOMReport.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.system_summary.forEach((val) => {
      length += DOMReport.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/SystemHealthReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '66f9803a57f858802ab4b9cb70114150';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Represents the complete system health as a listing of DOMs of all subsystems.
    
    Header header
    
    # Simply a list of all the subsystems and their current DOMs
    anm_msgs/DOMReport[] system_summary
    
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
    MSG: anm_msgs/DOMReport
    # The DOMReport is used to inform the supervisory layer of the current DOM
    # (Degraded Operation Mode) of a given subsystem.
    
    Header header
    
    # Name of the subsystem/module
    string subsystem_name
    
    # Degraded operation mode. 0 = no degradation, 1 = fully degraded or failed
    float32 dom
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SystemHealthReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.system_summary !== undefined) {
      resolved.system_summary = new Array(msg.system_summary.length);
      for (let i = 0; i < resolved.system_summary.length; ++i) {
        resolved.system_summary[i] = DOMReport.Resolve(msg.system_summary[i]);
      }
    }
    else {
      resolved.system_summary = []
    }

    return resolved;
    }
};

module.exports = SystemHealthReport;
