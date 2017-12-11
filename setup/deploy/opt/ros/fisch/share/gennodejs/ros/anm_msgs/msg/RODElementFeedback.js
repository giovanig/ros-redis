// Auto-generated. Do not edit!

// (in-package anm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RODElement = require('./RODElement.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RODElementFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.feedback = null;
      this.time_to_violation = null;
      this.element = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('feedback')) {
        this.feedback = initObj.feedback
      }
      else {
        this.feedback = 0;
      }
      if (initObj.hasOwnProperty('time_to_violation')) {
        this.time_to_violation = initObj.time_to_violation
      }
      else {
        this.time_to_violation = 0.0;
      }
      if (initObj.hasOwnProperty('element')) {
        this.element = initObj.element
      }
      else {
        this.element = new RODElement();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RODElementFeedback
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [feedback]
    bufferOffset = _serializer.uint8(obj.feedback, buffer, bufferOffset);
    // Serialize message field [time_to_violation]
    bufferOffset = _serializer.float32(obj.time_to_violation, buffer, bufferOffset);
    // Serialize message field [element]
    bufferOffset = RODElement.serialize(obj.element, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RODElementFeedback
    let len;
    let data = new RODElementFeedback(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [feedback]
    data.feedback = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [time_to_violation]
    data.time_to_violation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [element]
    data.element = RODElement.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += RODElement.getMessageSize(object.element);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/RODElementFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b487ac5a89abea776b278b3c85cd812';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint8 SATISFIED = 0
    uint8 VIOLATED = 1
    uint8 UPCOMING_VIOLATION = 2
    
    # The feedback code
    uint8 feedback
    
    # The time remaining until violation
    float32 time_to_violation
    
    # The element which the feedback is for
    anm_msgs/RODElement element
    
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
    MSG: anm_msgs/RODElement
    Header header
    
    # Type/classification of element
    string element_type
    
    # Different values depending on the element type
    float32 float_value
    string string_value
    string[] string_array
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RODElementFeedback(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.feedback !== undefined) {
      resolved.feedback = msg.feedback;
    }
    else {
      resolved.feedback = 0
    }

    if (msg.time_to_violation !== undefined) {
      resolved.time_to_violation = msg.time_to_violation;
    }
    else {
      resolved.time_to_violation = 0.0
    }

    if (msg.element !== undefined) {
      resolved.element = RODElement.Resolve(msg.element)
    }
    else {
      resolved.element = new RODElement()
    }

    return resolved;
    }
};

// Constants for message
RODElementFeedback.Constants = {
  SATISFIED: 0,
  VIOLATED: 1,
  UPCOMING_VIOLATION: 2,
}

module.exports = RODElementFeedback;
