// Auto-generated. Do not edit!

// (in-package etrans_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let etrans_light = require('./etrans_light.js');
let etrans_lane = require('./etrans_lane.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class etrans_intersection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ID = null;
      this.lights = null;
      this.lanes = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
      if (initObj.hasOwnProperty('lights')) {
        this.lights = initObj.lights
      }
      else {
        this.lights = [];
      }
      if (initObj.hasOwnProperty('lanes')) {
        this.lanes = initObj.lanes
      }
      else {
        this.lanes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type etrans_intersection
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ID]
    bufferOffset = _serializer.uint32(obj.ID, buffer, bufferOffset);
    // Serialize message field [lights]
    // Serialize the length for message field [lights]
    bufferOffset = _serializer.uint32(obj.lights.length, buffer, bufferOffset);
    obj.lights.forEach((val) => {
      bufferOffset = etrans_light.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [lanes]
    // Serialize the length for message field [lanes]
    bufferOffset = _serializer.uint32(obj.lanes.length, buffer, bufferOffset);
    obj.lanes.forEach((val) => {
      bufferOffset = etrans_lane.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type etrans_intersection
    let len;
    let data = new etrans_intersection(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ID]
    data.ID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lights]
    // Deserialize array length for message field [lights]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lights = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lights[i] = etrans_light.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [lanes]
    // Deserialize array length for message field [lanes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lanes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lanes[i] = etrans_lane.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 29 * object.lights.length;
    object.lanes.forEach((val) => {
      length += etrans_lane.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etrans_msgs/etrans_intersection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0c97a642a195257607a5e8b421317b71';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint32 ID
    etrans_msgs/etrans_light[] lights
    etrans_msgs/etrans_lane[] lanes
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
    MSG: etrans_msgs/etrans_light
    int8 state
    uint32 signal_group
    float64 time_to_change
    float64 latitude
    float64 longitude
    
    ================================================================================
    MSG: etrans_msgs/etrans_lane
    uint32 ID
    etrans_msgs/etrans_latlon[] centerpoints
    ================================================================================
    MSG: etrans_msgs/etrans_latlon
    float64 latitude
    float64 longitude
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new etrans_intersection(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    if (msg.lights !== undefined) {
      resolved.lights = new Array(msg.lights.length);
      for (let i = 0; i < resolved.lights.length; ++i) {
        resolved.lights[i] = etrans_light.Resolve(msg.lights[i]);
      }
    }
    else {
      resolved.lights = []
    }

    if (msg.lanes !== undefined) {
      resolved.lanes = new Array(msg.lanes.length);
      for (let i = 0; i < resolved.lanes.length; ++i) {
        resolved.lanes[i] = etrans_lane.Resolve(msg.lanes[i]);
      }
    }
    else {
      resolved.lanes = []
    }

    return resolved;
    }
};

module.exports = etrans_intersection;
