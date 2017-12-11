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

class DOMReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.subsystem_name = null;
      this.dom = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('subsystem_name')) {
        this.subsystem_name = initObj.subsystem_name
      }
      else {
        this.subsystem_name = '';
      }
      if (initObj.hasOwnProperty('dom')) {
        this.dom = initObj.dom
      }
      else {
        this.dom = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DOMReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [subsystem_name]
    bufferOffset = _serializer.string(obj.subsystem_name, buffer, bufferOffset);
    // Serialize message field [dom]
    bufferOffset = _serializer.float32(obj.dom, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DOMReport
    let len;
    let data = new DOMReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [subsystem_name]
    data.subsystem_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dom]
    data.dom = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.subsystem_name.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/DOMReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '549661b2ac2e4ffd500a8ce922b77d98';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The DOMReport is used to inform the supervisory layer of the current DOM
    # (Degraded Operation Mode) of a given subsystem.
    
    Header header
    
    # Name of the subsystem/module
    string subsystem_name
    
    # Degraded operation mode. 0 = no degradation, 1 = fully degraded or failed
    float32 dom
    
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
    const resolved = new DOMReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.subsystem_name !== undefined) {
      resolved.subsystem_name = msg.subsystem_name;
    }
    else {
      resolved.subsystem_name = ''
    }

    if (msg.dom !== undefined) {
      resolved.dom = msg.dom;
    }
    else {
      resolved.dom = 0.0
    }

    return resolved;
    }
};

module.exports = DOMReport;
