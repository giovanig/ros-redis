// Auto-generated. Do not edit!

// (in-package concert_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let rocon_std_msgs = _finder('rocon_std_msgs');

//-----------------------------------------------------------

class LinkNode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.resource = null;
      this.min = null;
      this.max = null;
      this.force_name_matching = null;
      this.parameters = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('resource')) {
        this.resource = initObj.resource
      }
      else {
        this.resource = '';
      }
      if (initObj.hasOwnProperty('min')) {
        this.min = initObj.min
      }
      else {
        this.min = 0;
      }
      if (initObj.hasOwnProperty('max')) {
        this.max = initObj.max
      }
      else {
        this.max = 0;
      }
      if (initObj.hasOwnProperty('force_name_matching')) {
        this.force_name_matching = initObj.force_name_matching
      }
      else {
        this.force_name_matching = false;
      }
      if (initObj.hasOwnProperty('parameters')) {
        this.parameters = initObj.parameters
      }
      else {
        this.parameters = new rocon_std_msgs.msg.KeyValue();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LinkNode
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [resource]
    bufferOffset = _serializer.string(obj.resource, buffer, bufferOffset);
    // Serialize message field [min]
    bufferOffset = _serializer.int8(obj.min, buffer, bufferOffset);
    // Serialize message field [max]
    bufferOffset = _serializer.int8(obj.max, buffer, bufferOffset);
    // Serialize message field [force_name_matching]
    bufferOffset = _serializer.bool(obj.force_name_matching, buffer, bufferOffset);
    // Serialize message field [parameters]
    bufferOffset = rocon_std_msgs.msg.KeyValue.serialize(obj.parameters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LinkNode
    let len;
    let data = new LinkNode(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [resource]
    data.resource = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [min]
    data.min = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [max]
    data.max = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [force_name_matching]
    data.force_name_matching = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [parameters]
    data.parameters = rocon_std_msgs.msg.KeyValue.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    length += object.resource.length;
    length += rocon_std_msgs.msg.KeyValue.getMessageSize(object.parameters);
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'concert_msgs/LinkNode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '66d27e37c29408b86c119285c34c50cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Representation of a concert client node in the implementation graph
    
    # unique identifier
    string id
    
    # rocon uri representing the required resource, e.g. rocon:/turtlebot/*#turtle_concert/turtle_stroll
    string resource
    
    # Constraints on how many of these nodes may exist
    #   min, max not set -> min = 1, max = 1
    #   min not set -> min = 1
    #   max not set -> max = UNLIMITED_RESOURCE
    # Zero is a valid minimum value
    int8 UNLIMITED_RESOURCE=-1
    int8 min
    int8 max
    
    # Force matching of robot name (only really useful for demos)
    bool force_name_matching
    
    # public parameters for node
    rocon_std_msgs/KeyValue parameters
    
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
    const resolved = new LinkNode(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.resource !== undefined) {
      resolved.resource = msg.resource;
    }
    else {
      resolved.resource = ''
    }

    if (msg.min !== undefined) {
      resolved.min = msg.min;
    }
    else {
      resolved.min = 0
    }

    if (msg.max !== undefined) {
      resolved.max = msg.max;
    }
    else {
      resolved.max = 0
    }

    if (msg.force_name_matching !== undefined) {
      resolved.force_name_matching = msg.force_name_matching;
    }
    else {
      resolved.force_name_matching = false
    }

    if (msg.parameters !== undefined) {
      resolved.parameters = rocon_std_msgs.msg.KeyValue.Resolve(msg.parameters)
    }
    else {
      resolved.parameters = new rocon_std_msgs.msg.KeyValue()
    }

    return resolved;
    }
};

// Constants for message
LinkNode.Constants = {
  UNLIMITED_RESOURCE: -1,
}

module.exports = LinkNode;
