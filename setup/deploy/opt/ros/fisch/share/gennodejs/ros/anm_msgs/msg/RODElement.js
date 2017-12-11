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

class RODElement {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.element_type = null;
      this.float_value = null;
      this.string_value = null;
      this.string_array = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('element_type')) {
        this.element_type = initObj.element_type
      }
      else {
        this.element_type = '';
      }
      if (initObj.hasOwnProperty('float_value')) {
        this.float_value = initObj.float_value
      }
      else {
        this.float_value = 0.0;
      }
      if (initObj.hasOwnProperty('string_value')) {
        this.string_value = initObj.string_value
      }
      else {
        this.string_value = '';
      }
      if (initObj.hasOwnProperty('string_array')) {
        this.string_array = initObj.string_array
      }
      else {
        this.string_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RODElement
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [element_type]
    bufferOffset = _serializer.string(obj.element_type, buffer, bufferOffset);
    // Serialize message field [float_value]
    bufferOffset = _serializer.float32(obj.float_value, buffer, bufferOffset);
    // Serialize message field [string_value]
    bufferOffset = _serializer.string(obj.string_value, buffer, bufferOffset);
    // Serialize message field [string_array]
    bufferOffset = _arraySerializer.string(obj.string_array, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RODElement
    let len;
    let data = new RODElement(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [element_type]
    data.element_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [float_value]
    data.float_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [string_value]
    data.string_value = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [string_array]
    data.string_array = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.element_type.length;
    length += object.string_value.length;
    object.string_array.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/RODElement';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7b81e47d437c4534e895e59adcc7f186';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # Type/classification of element
    string element_type
    
    # Different values depending on the element type
    float32 float_value
    string string_value
    string[] string_array
    
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
    const resolved = new RODElement(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.element_type !== undefined) {
      resolved.element_type = msg.element_type;
    }
    else {
      resolved.element_type = ''
    }

    if (msg.float_value !== undefined) {
      resolved.float_value = msg.float_value;
    }
    else {
      resolved.float_value = 0.0
    }

    if (msg.string_value !== undefined) {
      resolved.string_value = msg.string_value;
    }
    else {
      resolved.string_value = ''
    }

    if (msg.string_array !== undefined) {
      resolved.string_array = msg.string_array;
    }
    else {
      resolved.string_array = []
    }

    return resolved;
    }
};

module.exports = RODElement;
