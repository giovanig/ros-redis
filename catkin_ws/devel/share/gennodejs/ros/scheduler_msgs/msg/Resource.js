// Auto-generated. Do not edit!

// (in-package scheduler_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let rocon_std_msgs = _finder('rocon_std_msgs');
let uuid_msgs = _finder('uuid_msgs');

//-----------------------------------------------------------

class Resource {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rapp = null;
      this.id = null;
      this.uri = null;
      this.remappings = null;
      this.parameters = null;
    }
    else {
      if (initObj.hasOwnProperty('rapp')) {
        this.rapp = initObj.rapp
      }
      else {
        this.rapp = '';
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('uri')) {
        this.uri = initObj.uri
      }
      else {
        this.uri = '';
      }
      if (initObj.hasOwnProperty('remappings')) {
        this.remappings = initObj.remappings
      }
      else {
        this.remappings = [];
      }
      if (initObj.hasOwnProperty('parameters')) {
        this.parameters = initObj.parameters
      }
      else {
        this.parameters = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Resource
    // Serialize message field [rapp]
    bufferOffset = _serializer.string(obj.rapp, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [uri]
    bufferOffset = _serializer.string(obj.uri, buffer, bufferOffset);
    // Serialize message field [remappings]
    // Serialize the length for message field [remappings]
    bufferOffset = _serializer.uint32(obj.remappings.length, buffer, bufferOffset);
    obj.remappings.forEach((val) => {
      bufferOffset = rocon_std_msgs.msg.Remapping.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [parameters]
    // Serialize the length for message field [parameters]
    bufferOffset = _serializer.uint32(obj.parameters.length, buffer, bufferOffset);
    obj.parameters.forEach((val) => {
      bufferOffset = rocon_std_msgs.msg.KeyValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Resource
    let len;
    let data = new Resource(null);
    // Deserialize message field [rapp]
    data.rapp = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [uri]
    data.uri = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [remappings]
    // Deserialize array length for message field [remappings]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.remappings = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.remappings[i] = rocon_std_msgs.msg.Remapping.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [parameters]
    // Deserialize array length for message field [parameters]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.parameters = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.parameters[i] = rocon_std_msgs.msg.KeyValue.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.rapp.length;
    length += object.uri.length;
    object.remappings.forEach((val) => {
      length += rocon_std_msgs.msg.Remapping.getMessageSize(val);
    });
    object.parameters.forEach((val) => {
      length += rocon_std_msgs.msg.KeyValue.getMessageSize(val);
    });
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scheduler_msgs/Resource';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '754fd8dd757d06fa1564264b85a21995';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    MSG: uuid_msgs/UniqueID
    # A universally unique identifier (UUID).
    #
    #  http://en.wikipedia.org/wiki/Universally_unique_identifier
    #  http://tools.ietf.org/html/rfc4122.html
    
    uint8[16] uuid
    
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
    const resolved = new Resource(null);
    if (msg.rapp !== undefined) {
      resolved.rapp = msg.rapp;
    }
    else {
      resolved.rapp = ''
    }

    if (msg.id !== undefined) {
      resolved.id = uuid_msgs.msg.UniqueID.Resolve(msg.id)
    }
    else {
      resolved.id = new uuid_msgs.msg.UniqueID()
    }

    if (msg.uri !== undefined) {
      resolved.uri = msg.uri;
    }
    else {
      resolved.uri = ''
    }

    if (msg.remappings !== undefined) {
      resolved.remappings = new Array(msg.remappings.length);
      for (let i = 0; i < resolved.remappings.length; ++i) {
        resolved.remappings[i] = rocon_std_msgs.msg.Remapping.Resolve(msg.remappings[i]);
      }
    }
    else {
      resolved.remappings = []
    }

    if (msg.parameters !== undefined) {
      resolved.parameters = new Array(msg.parameters.length);
      for (let i = 0; i < resolved.parameters.length; ++i) {
        resolved.parameters[i] = rocon_std_msgs.msg.KeyValue.Resolve(msg.parameters[i]);
      }
    }
    else {
      resolved.parameters = []
    }

    return resolved;
    }
};

module.exports = Resource;
