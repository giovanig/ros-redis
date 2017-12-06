// Auto-generated. Do not edit!

// (in-package anm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrackedObject = require('./TrackedObject.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TrackedObjectList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tracked_objects = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tracked_objects')) {
        this.tracked_objects = initObj.tracked_objects
      }
      else {
        this.tracked_objects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackedObjectList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tracked_objects]
    // Serialize the length for message field [tracked_objects]
    bufferOffset = _serializer.uint32(obj.tracked_objects.length, buffer, bufferOffset);
    obj.tracked_objects.forEach((val) => {
      bufferOffset = TrackedObject.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackedObjectList
    let len;
    let data = new TrackedObjectList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tracked_objects]
    // Deserialize array length for message field [tracked_objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tracked_objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tracked_objects[i] = TrackedObject.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.tracked_objects.forEach((val) => {
      length += TrackedObject.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/TrackedObjectList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f252c59951ec5bfb4bcf631dd7845d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This messages defines an array of tracked 3d bounding boxes
    
    Header header
    TrackedObject[] tracked_objects
    
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
    MSG: anm_msgs/TrackedObject
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
    const resolved = new TrackedObjectList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tracked_objects !== undefined) {
      resolved.tracked_objects = new Array(msg.tracked_objects.length);
      for (let i = 0; i < resolved.tracked_objects.length; ++i) {
        resolved.tracked_objects[i] = TrackedObject.Resolve(msg.tracked_objects[i]);
      }
    }
    else {
      resolved.tracked_objects = []
    }

    return resolved;
    }
};

module.exports = TrackedObjectList;
