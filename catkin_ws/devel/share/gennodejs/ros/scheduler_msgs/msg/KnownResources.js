// Auto-generated. Do not edit!

// (in-package scheduler_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CurrentStatus = require('./CurrentStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class KnownResources {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.resources = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('resources')) {
        this.resources = initObj.resources
      }
      else {
        this.resources = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KnownResources
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [resources]
    // Serialize the length for message field [resources]
    bufferOffset = _serializer.uint32(obj.resources.length, buffer, bufferOffset);
    obj.resources.forEach((val) => {
      bufferOffset = CurrentStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KnownResources
    let len;
    let data = new KnownResources(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [resources]
    // Deserialize array length for message field [resources]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.resources = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.resources[i] = CurrentStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.resources.forEach((val) => {
      length += CurrentStatus.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scheduler_msgs/KnownResources';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3e12e9eddf5fe98089b8d550ce49151';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ### Known resources.
    #
    #   A ROCON scheduler uses this message to report the status of all
    #   the resources it knows about and manages.
    #
    Header header                   # Time of this status, frame_id irrelevant
    CurrentStatus[] resources       # Status of every currently-known resource
    
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
    MSG: scheduler_msgs/CurrentStatus
    ### ROCON resource current status.
    #
    #   A ROCON scheduler uses this message to report the status of each
    #   resource it manages.
    #
    
    ##############################################################################
    # Resource Identification
    ##############################################################################
    
    #   A canonical ROCON Uniform Resource Identifier describing this
    #   resource, a fully-resolved character string in the form:
    #
    #      rocon:/platform/name/framework/os
    #
    string uri
    
    ##############################################################################
    # Status
    ##############################################################################
    
    uint8 status            # Current status of this resource
    
    #  Status value labels:
    uint8 AVAILABLE   = 0   # Available for use
    uint8 ALLOCATED   = 1   # Allocated to some ROCON request
    uint8 MISSING     = 2   # Not currently responding
    uint8 GONE        = 3   # Has left the concert (cleanly)
    
    #   The owner is the unique identifier of the Request message to which
    #   this resource is currently assigned, or a zero UUID if it is not
    #   assigned.  An AVAILABLE resource never has an owner, but a MISSING
    #   one might.
    uuid_msgs/UniqueID owner
    
    #   The priority of an ALLOCATED resource is the priority of its
    #   owning request.  An AVAILABLE resource never has a non-zero
    #   priority, but a MISSING one might.
    int16 priority
    
    #   List of ROCON application names currently available with this
    #   resource. The name string is usually a ROS "package/node"
    #   identifier, unique because ROS package names are unique.  The
    #   contents of this list could change over time due to the device's
    #   own activities.
    string[] rapps
    
    ================================================================================
    MSG: uuid_msgs/UniqueID
    # A universally unique identifier (UUID).
    #
    #  http://en.wikipedia.org/wiki/Universally_unique_identifier
    #  http://tools.ietf.org/html/rfc4122.html
    
    uint8[16] uuid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KnownResources(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.resources !== undefined) {
      resolved.resources = new Array(msg.resources.length);
      for (let i = 0; i < resolved.resources.length; ++i) {
        resolved.resources[i] = CurrentStatus.Resolve(msg.resources[i]);
      }
    }
    else {
      resolved.resources = []
    }

    return resolved;
    }
};

module.exports = KnownResources;
