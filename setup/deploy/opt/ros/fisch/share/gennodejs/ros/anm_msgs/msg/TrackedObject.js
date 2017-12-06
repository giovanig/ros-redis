// Auto-generated. Do not edit!

// (in-package anm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TrackedObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.labels = null;
      this.center = null;
      this.h = null;
      this.w = null;
      this.l = null;
      this.ry = null;
      this.score = null;
      this.velocity = null;
      this.occluded = null;
      this.historied_center = null;
      this.historied_velocity = null;
      this.historied_occluded = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('labels')) {
        this.labels = initObj.labels
      }
      else {
        this.labels = 0;
      }
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('h')) {
        this.h = initObj.h
      }
      else {
        this.h = 0.0;
      }
      if (initObj.hasOwnProperty('w')) {
        this.w = initObj.w
      }
      else {
        this.w = 0.0;
      }
      if (initObj.hasOwnProperty('l')) {
        this.l = initObj.l
      }
      else {
        this.l = 0.0;
      }
      if (initObj.hasOwnProperty('ry')) {
        this.ry = initObj.ry
      }
      else {
        this.ry = 0.0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('occluded')) {
        this.occluded = initObj.occluded
      }
      else {
        this.occluded = false;
      }
      if (initObj.hasOwnProperty('historied_center')) {
        this.historied_center = initObj.historied_center
      }
      else {
        this.historied_center = [];
      }
      if (initObj.hasOwnProperty('historied_velocity')) {
        this.historied_velocity = initObj.historied_velocity
      }
      else {
        this.historied_velocity = [];
      }
      if (initObj.hasOwnProperty('historied_occluded')) {
        this.historied_occluded = initObj.historied_occluded
      }
      else {
        this.historied_occluded = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackedObject
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [labels]
    bufferOffset = _serializer.uint16(obj.labels, buffer, bufferOffset);
    // Serialize message field [center]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.center, buffer, bufferOffset);
    // Serialize message field [h]
    bufferOffset = _serializer.float32(obj.h, buffer, bufferOffset);
    // Serialize message field [w]
    bufferOffset = _serializer.float32(obj.w, buffer, bufferOffset);
    // Serialize message field [l]
    bufferOffset = _serializer.float32(obj.l, buffer, bufferOffset);
    // Serialize message field [ry]
    bufferOffset = _serializer.float32(obj.ry, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [occluded]
    bufferOffset = _serializer.bool(obj.occluded, buffer, bufferOffset);
    // Serialize message field [historied_center]
    // Serialize the length for message field [historied_center]
    bufferOffset = _serializer.uint32(obj.historied_center.length, buffer, bufferOffset);
    obj.historied_center.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [historied_velocity]
    // Serialize the length for message field [historied_velocity]
    bufferOffset = _serializer.uint32(obj.historied_velocity.length, buffer, bufferOffset);
    obj.historied_velocity.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [historied_occluded]
    bufferOffset = _arraySerializer.bool(obj.historied_occluded, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackedObject
    let len;
    let data = new TrackedObject(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [labels]
    data.labels = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [center]
    data.center = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [h]
    data.h = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [w]
    data.w = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [l]
    data.l = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ry]
    data.ry = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [occluded]
    data.occluded = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [historied_center]
    // Deserialize array length for message field [historied_center]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.historied_center = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.historied_center[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [historied_velocity]
    // Deserialize array length for message field [historied_velocity]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.historied_velocity = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.historied_velocity[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [historied_occluded]
    data.historied_occluded = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 24 * object.historied_center.length;
    length += 24 * object.historied_velocity.length;
    length += object.historied_occluded.length;
    return length + 87;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/TrackedObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ed9b60bacc1bae8a12b07a094063510';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This messages defines a set of tracked 3d bounding boxes
    #
    # 3D Bounding box coordinates are encoded using Kitti format (in camera frame), where (x,y,z)
    # represents the centroid, ry represents rotation around the y-axis in radians,
    # and (h,w,l) represent the height, width, length of the bounding box.
    #
    # All units but ry are in metres
    #
    # Note that the ground plane is represented using the x,z axis
    #
    # labels for classes classes = ['Car', 'Van', 'Truck', 'Pedestrian', 'Person_sitting', 'Cyclist', 'Tram', 'Misc']
    #
    #
    #
    
    Header header
    
    uint32 id
    uint16 labels
    
    # bounding box
    geometry_msgs/Vector3 center
    float32 h
    float32 w
    float32 l
    float32 ry
    float32 score
    
    # speed 
    geometry_msgs/Vector3 velocity
    
    # status
    bool occluded
    
    # historied center
    geometry_msgs/Vector3[] historied_center
    
    # historied speed
    geometry_msgs/Vector3[] historied_velocity
    
    # historied occlusion status
    bool[] historied_occluded
    
    
    
    
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
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrackedObject(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.labels !== undefined) {
      resolved.labels = msg.labels;
    }
    else {
      resolved.labels = 0
    }

    if (msg.center !== undefined) {
      resolved.center = geometry_msgs.msg.Vector3.Resolve(msg.center)
    }
    else {
      resolved.center = new geometry_msgs.msg.Vector3()
    }

    if (msg.h !== undefined) {
      resolved.h = msg.h;
    }
    else {
      resolved.h = 0.0
    }

    if (msg.w !== undefined) {
      resolved.w = msg.w;
    }
    else {
      resolved.w = 0.0
    }

    if (msg.l !== undefined) {
      resolved.l = msg.l;
    }
    else {
      resolved.l = 0.0
    }

    if (msg.ry !== undefined) {
      resolved.ry = msg.ry;
    }
    else {
      resolved.ry = 0.0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Vector3.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.occluded !== undefined) {
      resolved.occluded = msg.occluded;
    }
    else {
      resolved.occluded = false
    }

    if (msg.historied_center !== undefined) {
      resolved.historied_center = new Array(msg.historied_center.length);
      for (let i = 0; i < resolved.historied_center.length; ++i) {
        resolved.historied_center[i] = geometry_msgs.msg.Vector3.Resolve(msg.historied_center[i]);
      }
    }
    else {
      resolved.historied_center = []
    }

    if (msg.historied_velocity !== undefined) {
      resolved.historied_velocity = new Array(msg.historied_velocity.length);
      for (let i = 0; i < resolved.historied_velocity.length; ++i) {
        resolved.historied_velocity[i] = geometry_msgs.msg.Vector3.Resolve(msg.historied_velocity[i]);
      }
    }
    else {
      resolved.historied_velocity = []
    }

    if (msg.historied_occluded !== undefined) {
      resolved.historied_occluded = msg.historied_occluded;
    }
    else {
      resolved.historied_occluded = []
    }

    return resolved;
    }
};

module.exports = TrackedObject;
