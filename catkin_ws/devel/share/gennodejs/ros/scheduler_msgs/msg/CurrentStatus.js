// Auto-generated. Do not edit!

// (in-package scheduler_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let uuid_msgs = _finder('uuid_msgs');

//-----------------------------------------------------------

class CurrentStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uri = null;
      this.status = null;
      this.owner = null;
      this.priority = null;
      this.rapps = null;
    }
    else {
      if (initObj.hasOwnProperty('uri')) {
        this.uri = initObj.uri
      }
      else {
        this.uri = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('owner')) {
        this.owner = initObj.owner
      }
      else {
        this.owner = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0;
      }
      if (initObj.hasOwnProperty('rapps')) {
        this.rapps = initObj.rapps
      }
      else {
        this.rapps = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CurrentStatus
    // Serialize message field [uri]
    bufferOffset = _serializer.string(obj.uri, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [owner]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.owner, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = _serializer.int16(obj.priority, buffer, bufferOffset);
    // Serialize message field [rapps]
    bufferOffset = _arraySerializer.string(obj.rapps, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurrentStatus
    let len;
    let data = new CurrentStatus(null);
    // Deserialize message field [uri]
    data.uri = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [owner]
    data.owner = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [rapps]
    data.rapps = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.uri.length;
    object.rapps.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 27;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scheduler_msgs/CurrentStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6aad8a50fb8e5cf19eb4622c1c4b6467';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new CurrentStatus(null);
    if (msg.uri !== undefined) {
      resolved.uri = msg.uri;
    }
    else {
      resolved.uri = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.owner !== undefined) {
      resolved.owner = uuid_msgs.msg.UniqueID.Resolve(msg.owner)
    }
    else {
      resolved.owner = new uuid_msgs.msg.UniqueID()
    }

    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0
    }

    if (msg.rapps !== undefined) {
      resolved.rapps = msg.rapps;
    }
    else {
      resolved.rapps = []
    }

    return resolved;
    }
};

// Constants for message
CurrentStatus.Constants = {
  AVAILABLE: 0,
  ALLOCATED: 1,
  MISSING: 2,
  GONE: 3,
}

module.exports = CurrentStatus;
