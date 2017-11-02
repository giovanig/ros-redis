// Auto-generated. Do not edit!

// (in-package concert_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LinkNode = require('./LinkNode.js');
let LinkConnection = require('./LinkConnection.js');
let LinkEdge = require('./LinkEdge.js');

//-----------------------------------------------------------

class LinkGraph {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nodes = null;
      this.topics = null;
      this.actions = null;
      this.services = null;
      this.edges = null;
    }
    else {
      if (initObj.hasOwnProperty('nodes')) {
        this.nodes = initObj.nodes
      }
      else {
        this.nodes = [];
      }
      if (initObj.hasOwnProperty('topics')) {
        this.topics = initObj.topics
      }
      else {
        this.topics = [];
      }
      if (initObj.hasOwnProperty('actions')) {
        this.actions = initObj.actions
      }
      else {
        this.actions = [];
      }
      if (initObj.hasOwnProperty('services')) {
        this.services = initObj.services
      }
      else {
        this.services = [];
      }
      if (initObj.hasOwnProperty('edges')) {
        this.edges = initObj.edges
      }
      else {
        this.edges = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LinkGraph
    // Serialize message field [nodes]
    // Serialize the length for message field [nodes]
    bufferOffset = _serializer.uint32(obj.nodes.length, buffer, bufferOffset);
    obj.nodes.forEach((val) => {
      bufferOffset = LinkNode.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [topics]
    // Serialize the length for message field [topics]
    bufferOffset = _serializer.uint32(obj.topics.length, buffer, bufferOffset);
    obj.topics.forEach((val) => {
      bufferOffset = LinkConnection.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [actions]
    // Serialize the length for message field [actions]
    bufferOffset = _serializer.uint32(obj.actions.length, buffer, bufferOffset);
    obj.actions.forEach((val) => {
      bufferOffset = LinkConnection.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [services]
    // Serialize the length for message field [services]
    bufferOffset = _serializer.uint32(obj.services.length, buffer, bufferOffset);
    obj.services.forEach((val) => {
      bufferOffset = LinkConnection.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [edges]
    // Serialize the length for message field [edges]
    bufferOffset = _serializer.uint32(obj.edges.length, buffer, bufferOffset);
    obj.edges.forEach((val) => {
      bufferOffset = LinkEdge.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LinkGraph
    let len;
    let data = new LinkGraph(null);
    // Deserialize message field [nodes]
    // Deserialize array length for message field [nodes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.nodes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.nodes[i] = LinkNode.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [topics]
    // Deserialize array length for message field [topics]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.topics = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.topics[i] = LinkConnection.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [actions]
    // Deserialize array length for message field [actions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.actions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.actions[i] = LinkConnection.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [services]
    // Deserialize array length for message field [services]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.services = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.services[i] = LinkConnection.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [edges]
    // Deserialize array length for message field [edges]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.edges = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.edges[i] = LinkEdge.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.nodes.forEach((val) => {
      length += LinkNode.getMessageSize(val);
    });
    object.topics.forEach((val) => {
      length += LinkConnection.getMessageSize(val);
    });
    object.actions.forEach((val) => {
      length += LinkConnection.getMessageSize(val);
    });
    object.services.forEach((val) => {
      length += LinkConnection.getMessageSize(val);
    });
    object.edges.forEach((val) => {
      length += LinkEdge.getMessageSize(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'concert_msgs/LinkGraph';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '227c6e11d605d4647851f3e358cf10ba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A list of 'named' nodes, e.g. linux.*.ros.robosem.rocon_teleop
    
    LinkNode[]        nodes
    LinkConnection[]  topics
    LinkConnection[]  actions
    LinkConnection[]  services
    LinkEdge[]        edges
    
    ================================================================================
    MSG: concert_msgs/LinkNode
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
    ================================================================================
    MSG: concert_msgs/LinkConnection
    # Representation of a topic/action node in the 
    # implementation graph
    
    # unique identifier
    string id
    # type of the topic, e.g. std_msgs/String
    string type
    
    ================================================================================
    MSG: concert_msgs/LinkEdge
    # Edge of the implementation graph. Client-Topic, or 
    # Topic-Client or Client-Action or Action-Client
    
    string start
    string finish
    string remap_from
    string remap_to
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LinkGraph(null);
    if (msg.nodes !== undefined) {
      resolved.nodes = new Array(msg.nodes.length);
      for (let i = 0; i < resolved.nodes.length; ++i) {
        resolved.nodes[i] = LinkNode.Resolve(msg.nodes[i]);
      }
    }
    else {
      resolved.nodes = []
    }

    if (msg.topics !== undefined) {
      resolved.topics = new Array(msg.topics.length);
      for (let i = 0; i < resolved.topics.length; ++i) {
        resolved.topics[i] = LinkConnection.Resolve(msg.topics[i]);
      }
    }
    else {
      resolved.topics = []
    }

    if (msg.actions !== undefined) {
      resolved.actions = new Array(msg.actions.length);
      for (let i = 0; i < resolved.actions.length; ++i) {
        resolved.actions[i] = LinkConnection.Resolve(msg.actions[i]);
      }
    }
    else {
      resolved.actions = []
    }

    if (msg.services !== undefined) {
      resolved.services = new Array(msg.services.length);
      for (let i = 0; i < resolved.services.length; ++i) {
        resolved.services[i] = LinkConnection.Resolve(msg.services[i]);
      }
    }
    else {
      resolved.services = []
    }

    if (msg.edges !== undefined) {
      resolved.edges = new Array(msg.edges.length);
      for (let i = 0; i < resolved.edges.length; ++i) {
        resolved.edges[i] = LinkEdge.Resolve(msg.edges[i]);
      }
    }
    else {
      resolved.edges = []
    }

    return resolved;
    }
};

module.exports = LinkGraph;
