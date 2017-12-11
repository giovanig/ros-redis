// Auto-generated. Do not edit!

// (in-package anm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_msgs = _finder('nav_msgs');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BehaviouralAttributes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.maneuver = null;
      this.left_boundary = null;
      this.right_boundary = null;
      this.center_line = null;
      this.stop_location = null;
      this.target_velocity = null;
      this.lead_vehicle_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('maneuver')) {
        this.maneuver = initObj.maneuver
      }
      else {
        this.maneuver = 0;
      }
      if (initObj.hasOwnProperty('left_boundary')) {
        this.left_boundary = initObj.left_boundary
      }
      else {
        this.left_boundary = new nav_msgs.msg.Path();
      }
      if (initObj.hasOwnProperty('right_boundary')) {
        this.right_boundary = initObj.right_boundary
      }
      else {
        this.right_boundary = new nav_msgs.msg.Path();
      }
      if (initObj.hasOwnProperty('center_line')) {
        this.center_line = initObj.center_line
      }
      else {
        this.center_line = new nav_msgs.msg.Path();
      }
      if (initObj.hasOwnProperty('stop_location')) {
        this.stop_location = initObj.stop_location
      }
      else {
        this.stop_location = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('target_velocity')) {
        this.target_velocity = initObj.target_velocity
      }
      else {
        this.target_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('lead_vehicle_id')) {
        this.lead_vehicle_id = initObj.lead_vehicle_id
      }
      else {
        this.lead_vehicle_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BehaviouralAttributes
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [maneuver]
    bufferOffset = _serializer.uint8(obj.maneuver, buffer, bufferOffset);
    // Serialize message field [left_boundary]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.left_boundary, buffer, bufferOffset);
    // Serialize message field [right_boundary]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.right_boundary, buffer, bufferOffset);
    // Serialize message field [center_line]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.center_line, buffer, bufferOffset);
    // Serialize message field [stop_location]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.stop_location, buffer, bufferOffset);
    // Serialize message field [target_velocity]
    bufferOffset = _serializer.float64(obj.target_velocity, buffer, bufferOffset);
    // Serialize message field [lead_vehicle_id]
    bufferOffset = _serializer.uint32(obj.lead_vehicle_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BehaviouralAttributes
    let len;
    let data = new BehaviouralAttributes(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [maneuver]
    data.maneuver = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [left_boundary]
    data.left_boundary = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_boundary]
    data.right_boundary = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    // Deserialize message field [center_line]
    data.center_line = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    // Deserialize message field [stop_location]
    data.stop_location = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_velocity]
    data.target_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lead_vehicle_id]
    data.lead_vehicle_id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += nav_msgs.msg.Path.getMessageSize(object.left_boundary);
    length += nav_msgs.msg.Path.getMessageSize(object.right_boundary);
    length += nav_msgs.msg.Path.getMessageSize(object.center_line);
    return length + 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anm_msgs/BehaviouralAttributes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f25317166506ec5eda1d82c7f612bedf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message describes all necessary communication between the behavior and local planner
    
    Header header
    
    # The following constants are used to define the current maneuver being executed 
    uint8 TRACK_SPEED = 0  			# Track the target speed as defined by target_velocity
    uint8 DECELERATE_TO_STOP = 1		# Decelerate to a stopping point as defined by stop_location
    uint8 STOP = 2  			# Stay stopped in its current location
    uint8 PARKED_VEHICLE_AVOID = 3		# Avoid an upcoming parked vehicle by relaxing the left_boundary constraint
    uint8 LEAD_VEHICLE_FOLLOW = 4      	# Follow a lead vehicle as defined by its lead_vehicle_id
    
    uint8 maneuver				# Identifies the maneuver to be executed
    nav_msgs/Path left_boundary		# Left lane boundary constraint
    nav_msgs/Path right_boundary		# Right lane boundary constraint
    nav_msgs/Path center_line		# Center of the lane path (global path) that should be follow
    geometry_msgs/Point stop_location	# A point at which the car should stop by
    float64 target_velocity			# The velocity which the car should attempt to maintain
    uint32 lead_vehicle_id			# The ID of the vehicle that should be followed
    
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
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BehaviouralAttributes(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.maneuver !== undefined) {
      resolved.maneuver = msg.maneuver;
    }
    else {
      resolved.maneuver = 0
    }

    if (msg.left_boundary !== undefined) {
      resolved.left_boundary = nav_msgs.msg.Path.Resolve(msg.left_boundary)
    }
    else {
      resolved.left_boundary = new nav_msgs.msg.Path()
    }

    if (msg.right_boundary !== undefined) {
      resolved.right_boundary = nav_msgs.msg.Path.Resolve(msg.right_boundary)
    }
    else {
      resolved.right_boundary = new nav_msgs.msg.Path()
    }

    if (msg.center_line !== undefined) {
      resolved.center_line = nav_msgs.msg.Path.Resolve(msg.center_line)
    }
    else {
      resolved.center_line = new nav_msgs.msg.Path()
    }

    if (msg.stop_location !== undefined) {
      resolved.stop_location = geometry_msgs.msg.Point.Resolve(msg.stop_location)
    }
    else {
      resolved.stop_location = new geometry_msgs.msg.Point()
    }

    if (msg.target_velocity !== undefined) {
      resolved.target_velocity = msg.target_velocity;
    }
    else {
      resolved.target_velocity = 0.0
    }

    if (msg.lead_vehicle_id !== undefined) {
      resolved.lead_vehicle_id = msg.lead_vehicle_id;
    }
    else {
      resolved.lead_vehicle_id = 0
    }

    return resolved;
    }
};

// Constants for message
BehaviouralAttributes.Constants = {
  TRACK_SPEED: 0,
  DECELERATE_TO_STOP: 1,
  STOP: 2,
  PARKED_VEHICLE_AVOID: 3,
  LEAD_VEHICLE_FOLLOW: 4,
}

module.exports = BehaviouralAttributes;
