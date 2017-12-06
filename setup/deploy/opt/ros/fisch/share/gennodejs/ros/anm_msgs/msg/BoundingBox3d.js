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

class BoundingBox3d {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.total = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.h = null;
      this.w = null;
      this.l = null;
      this.ry = null;
      this.score = null;
      this.labels = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('total')) {
        this.total = initObj.total
      }
      else {
        this.total = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = [];
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = [];
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = [];
      }
      if (initObj.hasOwnProperty('h')) {
        this.h = initObj.h
      }
      else {
        this.h = [];
      }
      if (initObj.hasOwnProperty('w')) {
        this.w = initObj.w
      }
      else {
        this.w = [];
      }
      if (initObj.hasOwnProperty('l')) {
        this.l = initObj.l
      }
      else {
        this.l = [];
      }
      if (initObj.hasOwnProperty('ry')) {
        this.ry = initObj.ry
      }
      else {
        this.ry = [];
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = [];
      }
      if (initObj.hasOwnProperty('labels')) {
        this.labels = initObj.labels
      }
      else {
        this.labels = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BoundingBox3d
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [total]
    bufferOffset = _serializer.uint32(obj.total, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _arraySerializer.float32(obj.x, buffer, bufferOffset, null);
    // Serialize message field [y]
    bufferOffset = _arraySerializer.float32(obj.y, buffer, bufferOffset, null);
    // Serialize message field [z]
    bufferOffset = _arraySerializer.float32(obj.z, buffer, bufferOffset, null);
    // Serialize message field [h]
    bufferOffset = _arraySerializer.float32(obj.h, buffer, bufferOffset, null);
    // Serialize message field [w]
    bufferOffset = _arraySerializer.float32(obj.w, buffer, bufferOffset, null);
    // Serialize message field [l]
    bufferOffset = _arraySerializer.float32(obj.l, buffer, bufferOffset, null);
    // Serialize message field [ry]
    bufferOffset = _arraySerializer.float32(obj.ry, buffer, bufferOffset, null);
    // Serialize message field [score]
    bufferOffset = _arraySerializer.float32(obj.score, buffer, bufferOffset, null);
    // Serialize message field [labels]
    bufferOffset = _arraySerializer.uint16(obj.labels, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BoundingBox3d
    let len;
    let data = new BoundingBox3d(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [total]
    data.total = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [y]
    data.y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [z]
    data.z = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [h]
    data.h = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [w]
    data.w = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [l]
    data.l = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [ry]
    data.ry = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [score]
    data.score = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [labels]
    data.labels = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.x.length;
    length += 4 * object.y.length;
    length += 4 * object.z.length;
    length += 4 * object.h.length;
    length += 4 * object.w.length;
    length += 4 * object.l.length;
    length += 4 * object.ry.length;
    length += 4 * object.score.length;
    length += 2 * object.labels.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/BoundingBox3d';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '036e1565fd608b01ec7d4aa4d4607d3a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This messages defines a set of labeled 2d bounding boxes
    #
    # Bounding box coordinates are encoded using Kitti format, where (x,y,z)
    # represents the centroid, ry represents rotation around the y-axis in radians,
    # and (h,w,l) represent the height, width, length of the bounding box.
    #
    # All units but ry are in metres
    #
    # Note that the ground plane is represented using the x,z axis
    
    Header header
    
    uint32 total
    
    float32[] x
    float32[] y
    float32[] z
    float32[] h
    float32[] w
    float32[] l
    float32[] ry
    float32[] score
    uint16[] labels
    
    
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
    const resolved = new BoundingBox3d(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.total !== undefined) {
      resolved.total = msg.total;
    }
    else {
      resolved.total = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = []
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = []
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = []
    }

    if (msg.h !== undefined) {
      resolved.h = msg.h;
    }
    else {
      resolved.h = []
    }

    if (msg.w !== undefined) {
      resolved.w = msg.w;
    }
    else {
      resolved.w = []
    }

    if (msg.l !== undefined) {
      resolved.l = msg.l;
    }
    else {
      resolved.l = []
    }

    if (msg.ry !== undefined) {
      resolved.ry = msg.ry;
    }
    else {
      resolved.ry = []
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = []
    }

    if (msg.labels !== undefined) {
      resolved.labels = msg.labels;
    }
    else {
      resolved.labels = []
    }

    return resolved;
    }
};

module.exports = BoundingBox3d;
