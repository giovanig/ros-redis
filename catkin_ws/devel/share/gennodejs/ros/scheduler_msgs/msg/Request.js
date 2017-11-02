// Auto-generated. Do not edit!

// (in-package scheduler_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Resource = require('./Resource.js');
let uuid_msgs = _finder('uuid_msgs');

//-----------------------------------------------------------

class Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.resources = null;
      this.status = null;
      this.reason = null;
      this.problem = null;
      this.availability = null;
      this.hold_time = null;
      this.priority = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('resources')) {
        this.resources = initObj.resources
      }
      else {
        this.resources = [];
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('reason')) {
        this.reason = initObj.reason
      }
      else {
        this.reason = 0;
      }
      if (initObj.hasOwnProperty('problem')) {
        this.problem = initObj.problem
      }
      else {
        this.problem = '';
      }
      if (initObj.hasOwnProperty('availability')) {
        this.availability = initObj.availability
      }
      else {
        this.availability = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('hold_time')) {
        this.hold_time = initObj.hold_time
      }
      else {
        this.hold_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Request
    // Serialize message field [id]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [resources]
    // Serialize the length for message field [resources]
    bufferOffset = _serializer.uint32(obj.resources.length, buffer, bufferOffset);
    obj.resources.forEach((val) => {
      bufferOffset = Resource.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [reason]
    bufferOffset = _serializer.uint8(obj.reason, buffer, bufferOffset);
    // Serialize message field [problem]
    bufferOffset = _serializer.string(obj.problem, buffer, bufferOffset);
    // Serialize message field [availability]
    bufferOffset = _serializer.time(obj.availability, buffer, bufferOffset);
    // Serialize message field [hold_time]
    bufferOffset = _serializer.duration(obj.hold_time, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = _serializer.int16(obj.priority, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Request
    let len;
    let data = new Request(null);
    // Deserialize message field [id]
    data.id = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [resources]
    // Deserialize array length for message field [resources]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.resources = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.resources[i] = Resource.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reason]
    data.reason = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [problem]
    data.problem = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [availability]
    data.availability = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [hold_time]
    data.hold_time = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.resources.forEach((val) => {
      length += Resource.getMessageSize(val);
    });
    length += object.problem.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scheduler_msgs/Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1556d9f8919617c2f52b2a4ab15f6468';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ### Resource request description
    #
    #   This tracks the progress of a single requested resource group.
    #   All these resources will be granted, preempted or canceled
    #   together as a unit.
    
    ##############################################################################
    # Resource Identification
    ##############################################################################
    
    uuid_msgs/UniqueID id   # Requester-assigned universally unique identifier
    Resource[] resources    # List of requested rapps and platforms
    
    ##############################################################################
    # State
    ##############################################################################
    
    uint8 status            # Current status of this request
    uint8 reason            # Reason for this status
    string problem          # Convenience message for introspecting on the reason 
    
    #  Status value labels:
    uint8 NEW         = 0   # New request for the scheduler
    uint8 RESERVED    = 1   # Request for a reservation at some future time
    uint8 WAITING     = 2   # Request has been queued by the scheduler
    uint8 GRANTED     = 3   # Request was granted by the scheduler
    uint8 PREEMPTING  = 4   # The scheduler wants to preempt this
                            #   previously-granted request, but the
                            #   requester has not yet canceled it
    uint8 CANCELING   = 5   # The requester wishes to cancel this
                            #   request, but the scheduler has not yet
                            #   confirmed that it is closed
    uint8 CLOSED      = 6   # Request is now closed (terminal state)
    
    # Reason labels:
    uint8 NONE        = 0   # No reason provided
    uint8 PREEMPTED   = 1   # Preempted for higher-priority task
    uint8 BUSY        = 2   # Requested resource busy elsewhere
    uint8 UNAVAILABLE = 3   # Requested resource not available
    uint8 TIMEOUT     = 4   # Lost contact with requester
    uint8 INVALID     = 5   # Ill-formed request: see problem string for details
    
    ##############################################################################
    # Scheduling Variables
    ##############################################################################
    
    time     availability   # Estimated time of availability (zero if unknown)
    duration hold_time      # Estimated hold time once allocated (zero if unknown)
    int16    priority       # Current priority of this request
    
    # Priority labels:
    int16 BACKGROUND_PRIORITY = -20000      # When nothing else to do
    int16 LOW_PRIORITY = -10000             # Low-priority task
    int16 DEFAULT_PRIORITY = 0              # Sane default priority
    int16 HIGH_PRIORITY = 10000             # High-priority task
    int16 CRITICAL_PRIORITY = 20000         # Mission-critical task
    
    ================================================================================
    MSG: uuid_msgs/UniqueID
    # A universally unique identifier (UUID).
    #
    #  http://en.wikipedia.org/wiki/Universally_unique_identifier
    #  http://tools.ietf.org/html/rfc4122.html
    
    uint8[16] uuid
    
    ================================================================================
    MSG: scheduler_msgs/Resource
    ### ROCON resource request or response.
    #
    #   A scheduler_msgs/Request message includes one Resource message for
    #   each desired resource.  The scheduler responds using this same
    #   message to identify exactly what corresponding resource it has
    #   granted.
    
    # This is usually a uniquely identifying ros_package/rapp name
    # identifier, which is unique because ros packages are unique.
    string rapp
    
    # Unique identifier assigned by the requester to track resources
    # assigned in the scheduler feedback.
    uuid_msgs/UniqueID id
    
    # Uniform Resource Identifier for the platform.  ROCON defines two
    # kinds of URI strings:
    #
    # 1) A "resource description URI" is a canonical string for a specific
    #    device.  All components are fully resolved to their most specific
    #    values, like:
    #
    #      "rocon:/turtlebot/dude3/hydro/precise"
    #
    #    The scheduler provides fully resolved resource description URIs
    #    in its feedback for requests that have been granted.
    #
    # 2) A "request URI" may provide a similar descriptive representation,
    #    or may include patterns for matching multiple alternative
    #    platforms.  Omitted or '*' patterns match any valid value:
    #
    #      ""                               # (empty string): any platform
    #      "rocon:/turtlebot"               # any turtlebot
    #      "rocon:/(turtlebot|segbot)"      # any robot of either type
    #      "rocon:/*/dude3"                 # any device named dude3
    #      "rocon:/*/*/ros/ubuntu"          # any ROS Ubuntu platform
    #
    string uri
    
    # Remappings which get passed on for starting the rapps. Also potentially for
    # more esoteric use cases such as checking whether an app is sharable.
    rocon_std_msgs/Remapping[] remappings
    rocon_std_msgs/KeyValue[] parameters
    
    ================================================================================
    MSG: rocon_std_msgs/Remapping
    # Describes your typical ros remapping
    
    string remap_from
    string remap_to
    
    ================================================================================
    MSG: rocon_std_msgs/KeyValue
    string key
    string value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Request(null);
    if (msg.id !== undefined) {
      resolved.id = uuid_msgs.msg.UniqueID.Resolve(msg.id)
    }
    else {
      resolved.id = new uuid_msgs.msg.UniqueID()
    }

    if (msg.resources !== undefined) {
      resolved.resources = new Array(msg.resources.length);
      for (let i = 0; i < resolved.resources.length; ++i) {
        resolved.resources[i] = Resource.Resolve(msg.resources[i]);
      }
    }
    else {
      resolved.resources = []
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.reason !== undefined) {
      resolved.reason = msg.reason;
    }
    else {
      resolved.reason = 0
    }

    if (msg.problem !== undefined) {
      resolved.problem = msg.problem;
    }
    else {
      resolved.problem = ''
    }

    if (msg.availability !== undefined) {
      resolved.availability = msg.availability;
    }
    else {
      resolved.availability = {secs: 0, nsecs: 0}
    }

    if (msg.hold_time !== undefined) {
      resolved.hold_time = msg.hold_time;
    }
    else {
      resolved.hold_time = {secs: 0, nsecs: 0}
    }

    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0
    }

    return resolved;
    }
};

// Constants for message
Request.Constants = {
  NEW: 0,
  RESERVED: 1,
  WAITING: 2,
  GRANTED: 3,
  PREEMPTING: 4,
  CANCELING: 5,
  CLOSED: 6,
  NONE: 0,
  PREEMPTED: 1,
  BUSY: 2,
  UNAVAILABLE: 3,
  TIMEOUT: 4,
  INVALID: 5,
  BACKGROUND_PRIORITY: -20000,
  LOW_PRIORITY: -10000,
  DEFAULT_PRIORITY: 0,
  HIGH_PRIORITY: 10000,
  CRITICAL_PRIORITY: 20000,
}

module.exports = Request;
