// Auto-generated. Do not edit!

// (in-package scheduler_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Request = require('./Request.js');
let std_msgs = _finder('std_msgs');
let uuid_msgs = _finder('uuid_msgs');

//-----------------------------------------------------------

class SchedulerRequests {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.requester = null;
      this.requests = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('requester')) {
        this.requester = initObj.requester
      }
      else {
        this.requester = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('requests')) {
        this.requests = initObj.requests
      }
      else {
        this.requests = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SchedulerRequests
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [requester]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.requester, buffer, bufferOffset);
    // Serialize message field [requests]
    // Serialize the length for message field [requests]
    bufferOffset = _serializer.uint32(obj.requests.length, buffer, bufferOffset);
    obj.requests.forEach((val) => {
      bufferOffset = Request.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SchedulerRequests
    let len;
    let data = new SchedulerRequests(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [requester]
    data.requester = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [requests]
    // Deserialize array length for message field [requests]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.requests = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.requests[i] = Request.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.requests.forEach((val) => {
      length += Request.getMessageSize(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scheduler_msgs/SchedulerRequests';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0adc2f83296939c4b208a3e0619e86f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ### Scheduler Requests
    #
    #   Rocon services send this message on the scheduler's input topic to
    #   make or update their resource requests.  All resources they
    #   currently have or desire should be included.
    #
    #   If not all of the requested resources are immediately available,
    #   the scheduler will queue those requests and provide feedback using
    #   a message of the same type.  The requester should wait until
    #   feedback indicates the associated resources are available.  It may
    #   cancel some requests at any time via an new allocation message.
    #
    Header header                   # Time of this status, frame_id irrelevant
    uuid_msgs/UniqueID requester    # Requester identifier
    Request[] requests              # Status of every currently-known request
    
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
    MSG: uuid_msgs/UniqueID
    # A universally unique identifier (UUID).
    #
    #  http://en.wikipedia.org/wiki/Universally_unique_identifier
    #  http://tools.ietf.org/html/rfc4122.html
    
    uint8[16] uuid
    
    ================================================================================
    MSG: scheduler_msgs/Request
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
    const resolved = new SchedulerRequests(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.requester !== undefined) {
      resolved.requester = uuid_msgs.msg.UniqueID.Resolve(msg.requester)
    }
    else {
      resolved.requester = new uuid_msgs.msg.UniqueID()
    }

    if (msg.requests !== undefined) {
      resolved.requests = new Array(msg.requests.length);
      for (let i = 0; i < resolved.requests.length; ++i) {
        resolved.requests[i] = Request.Resolve(msg.requests[i]);
      }
    }
    else {
      resolved.requests = []
    }

    return resolved;
    }
};

module.exports = SchedulerRequests;
