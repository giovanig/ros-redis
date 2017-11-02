// Auto-generated. Do not edit!

// (in-package gateway_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Rule = require('./Rule.js');
let RemoteRuleWithStatus = require('./RemoteRuleWithStatus.js');
let RemoteRule = require('./RemoteRule.js');

//-----------------------------------------------------------

class GatewayInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.discover_hubs_by_zeroconf = null;
      this.discover_hubs_by_uri = null;
      this.connected = null;
      this.ip = null;
      this.hub_names = null;
      this.hub_uris = null;
      this.firewall = null;
      this.public_watchlist = null;
      this.public_interface = null;
      this.flipped_connections = null;
      this.flip_watchlist = null;
      this.flipped_in_connections = null;
      this.pull_watchlist = null;
      this.pulled_connections = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('discover_hubs_by_zeroconf')) {
        this.discover_hubs_by_zeroconf = initObj.discover_hubs_by_zeroconf
      }
      else {
        this.discover_hubs_by_zeroconf = false;
      }
      if (initObj.hasOwnProperty('discover_hubs_by_uri')) {
        this.discover_hubs_by_uri = initObj.discover_hubs_by_uri
      }
      else {
        this.discover_hubs_by_uri = [];
      }
      if (initObj.hasOwnProperty('connected')) {
        this.connected = initObj.connected
      }
      else {
        this.connected = false;
      }
      if (initObj.hasOwnProperty('ip')) {
        this.ip = initObj.ip
      }
      else {
        this.ip = '';
      }
      if (initObj.hasOwnProperty('hub_names')) {
        this.hub_names = initObj.hub_names
      }
      else {
        this.hub_names = [];
      }
      if (initObj.hasOwnProperty('hub_uris')) {
        this.hub_uris = initObj.hub_uris
      }
      else {
        this.hub_uris = [];
      }
      if (initObj.hasOwnProperty('firewall')) {
        this.firewall = initObj.firewall
      }
      else {
        this.firewall = false;
      }
      if (initObj.hasOwnProperty('public_watchlist')) {
        this.public_watchlist = initObj.public_watchlist
      }
      else {
        this.public_watchlist = [];
      }
      if (initObj.hasOwnProperty('public_interface')) {
        this.public_interface = initObj.public_interface
      }
      else {
        this.public_interface = [];
      }
      if (initObj.hasOwnProperty('flipped_connections')) {
        this.flipped_connections = initObj.flipped_connections
      }
      else {
        this.flipped_connections = [];
      }
      if (initObj.hasOwnProperty('flip_watchlist')) {
        this.flip_watchlist = initObj.flip_watchlist
      }
      else {
        this.flip_watchlist = [];
      }
      if (initObj.hasOwnProperty('flipped_in_connections')) {
        this.flipped_in_connections = initObj.flipped_in_connections
      }
      else {
        this.flipped_in_connections = [];
      }
      if (initObj.hasOwnProperty('pull_watchlist')) {
        this.pull_watchlist = initObj.pull_watchlist
      }
      else {
        this.pull_watchlist = [];
      }
      if (initObj.hasOwnProperty('pulled_connections')) {
        this.pulled_connections = initObj.pulled_connections
      }
      else {
        this.pulled_connections = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GatewayInfo
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [discover_hubs_by_zeroconf]
    bufferOffset = _serializer.bool(obj.discover_hubs_by_zeroconf, buffer, bufferOffset);
    // Serialize message field [discover_hubs_by_uri]
    bufferOffset = _arraySerializer.string(obj.discover_hubs_by_uri, buffer, bufferOffset, null);
    // Serialize message field [connected]
    bufferOffset = _serializer.bool(obj.connected, buffer, bufferOffset);
    // Serialize message field [ip]
    bufferOffset = _serializer.string(obj.ip, buffer, bufferOffset);
    // Serialize message field [hub_names]
    bufferOffset = _arraySerializer.string(obj.hub_names, buffer, bufferOffset, null);
    // Serialize message field [hub_uris]
    bufferOffset = _arraySerializer.string(obj.hub_uris, buffer, bufferOffset, null);
    // Serialize message field [firewall]
    bufferOffset = _serializer.bool(obj.firewall, buffer, bufferOffset);
    // Serialize message field [public_watchlist]
    // Serialize the length for message field [public_watchlist]
    bufferOffset = _serializer.uint32(obj.public_watchlist.length, buffer, bufferOffset);
    obj.public_watchlist.forEach((val) => {
      bufferOffset = Rule.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [public_interface]
    // Serialize the length for message field [public_interface]
    bufferOffset = _serializer.uint32(obj.public_interface.length, buffer, bufferOffset);
    obj.public_interface.forEach((val) => {
      bufferOffset = Rule.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [flipped_connections]
    // Serialize the length for message field [flipped_connections]
    bufferOffset = _serializer.uint32(obj.flipped_connections.length, buffer, bufferOffset);
    obj.flipped_connections.forEach((val) => {
      bufferOffset = RemoteRuleWithStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [flip_watchlist]
    // Serialize the length for message field [flip_watchlist]
    bufferOffset = _serializer.uint32(obj.flip_watchlist.length, buffer, bufferOffset);
    obj.flip_watchlist.forEach((val) => {
      bufferOffset = RemoteRule.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [flipped_in_connections]
    // Serialize the length for message field [flipped_in_connections]
    bufferOffset = _serializer.uint32(obj.flipped_in_connections.length, buffer, bufferOffset);
    obj.flipped_in_connections.forEach((val) => {
      bufferOffset = RemoteRule.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pull_watchlist]
    // Serialize the length for message field [pull_watchlist]
    bufferOffset = _serializer.uint32(obj.pull_watchlist.length, buffer, bufferOffset);
    obj.pull_watchlist.forEach((val) => {
      bufferOffset = RemoteRule.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pulled_connections]
    // Serialize the length for message field [pulled_connections]
    bufferOffset = _serializer.uint32(obj.pulled_connections.length, buffer, bufferOffset);
    obj.pulled_connections.forEach((val) => {
      bufferOffset = RemoteRule.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GatewayInfo
    let len;
    let data = new GatewayInfo(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [discover_hubs_by_zeroconf]
    data.discover_hubs_by_zeroconf = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [discover_hubs_by_uri]
    data.discover_hubs_by_uri = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [connected]
    data.connected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ip]
    data.ip = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [hub_names]
    data.hub_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [hub_uris]
    data.hub_uris = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [firewall]
    data.firewall = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [public_watchlist]
    // Deserialize array length for message field [public_watchlist]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.public_watchlist = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.public_watchlist[i] = Rule.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [public_interface]
    // Deserialize array length for message field [public_interface]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.public_interface = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.public_interface[i] = Rule.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [flipped_connections]
    // Deserialize array length for message field [flipped_connections]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.flipped_connections = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.flipped_connections[i] = RemoteRuleWithStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [flip_watchlist]
    // Deserialize array length for message field [flip_watchlist]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.flip_watchlist = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.flip_watchlist[i] = RemoteRule.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [flipped_in_connections]
    // Deserialize array length for message field [flipped_in_connections]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.flipped_in_connections = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.flipped_in_connections[i] = RemoteRule.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pull_watchlist]
    // Deserialize array length for message field [pull_watchlist]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pull_watchlist = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pull_watchlist[i] = RemoteRule.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pulled_connections]
    // Deserialize array length for message field [pulled_connections]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pulled_connections = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pulled_connections[i] = RemoteRule.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    object.discover_hubs_by_uri.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.ip.length;
    object.hub_names.forEach((val) => {
      length += 4 + val.length;
    });
    object.hub_uris.forEach((val) => {
      length += 4 + val.length;
    });
    object.public_watchlist.forEach((val) => {
      length += Rule.getMessageSize(val);
    });
    object.public_interface.forEach((val) => {
      length += Rule.getMessageSize(val);
    });
    object.flipped_connections.forEach((val) => {
      length += RemoteRuleWithStatus.getMessageSize(val);
    });
    object.flip_watchlist.forEach((val) => {
      length += RemoteRule.getMessageSize(val);
    });
    object.flipped_in_connections.forEach((val) => {
      length += RemoteRule.getMessageSize(val);
    });
    object.pull_watchlist.forEach((val) => {
      length += RemoteRule.getMessageSize(val);
    });
    object.pulled_connections.forEach((val) => {
      length += RemoteRule.getMessageSize(val);
    });
    return length + 51;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gateway_msgs/GatewayInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6813c0195882d105e9e462fe1035ed2e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ###### Gateway information ######
    
    # Gateway parameters
    string name
    bool discover_hubs_by_zeroconf 
    string[] discover_hubs_by_uri
    bool connected
    string ip
    
    # Hub parameters
    string[] hub_names
    string[] hub_uris
    
    bool firewall
    
    ###### Public Interface ######
    
    Rule[] public_watchlist
    Rule[] public_interface
    
    ###### Flipped Interface ######
    
    RemoteRuleWithStatus[] flipped_connections
    RemoteRule[] flip_watchlist
    RemoteRule[] flipped_in_connections
    
    ###### Pulled Interface ######
    
    RemoteRule[] pull_watchlist
    RemoteRule[] pulled_connections
    
    
    ================================================================================
    MSG: gateway_msgs/Rule
    # Standard gateway connection rule
    
    # type of connection (from gateway_msgs.msg.Connection)
    string type
    
    # this is the topic/service name or the action base name (a regex is supported)
    string name 
    
    # (optional) an optional node name can be provided. if node name is not provided
    # then all nodes are matched (also supports regex)
    string node
    
    ================================================================================
    MSG: gateway_msgs/RemoteRuleWithStatus
    # The remote rule whose status is being defined here
    RemoteRule remote_rule
    
    # Whether the flip is still pending, was accepted 
    string UNKNOWN=unknown
    string PENDING=pending
    string ACCEPTED=accepted
    string BLOCKED=blocked
    string RESEND=resend
    string status
    
    ================================================================================
    MSG: gateway_msgs/RemoteRule
    # Definition for a flip. It represents either:
    #
    # 1) an existing flipped connection (from the local gateway)
    # 2) a rule that is put on a watchlist
    
    # The target recipient of the flip
    string gateway
    
    # Connection has the following parameters that need setting
    # - name : fully qualified name of the connection (str)
    # - type : connection type (str)
    #  
    # Use one of the types defined in Connection string constants:
    #     (publisher, subscriber, service, action_client, action_server)
    #
    # - node : name of the node it originates from (str)(optional)
    #
    # Node name is necessary, for instance, if you have multiple subscribers
    # publishing to a single topic. Most of the time it is not necessary,
    # but in some cases it helps refine the rule. It helps refine the rule.
    #
    Rule rule
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GatewayInfo(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.discover_hubs_by_zeroconf !== undefined) {
      resolved.discover_hubs_by_zeroconf = msg.discover_hubs_by_zeroconf;
    }
    else {
      resolved.discover_hubs_by_zeroconf = false
    }

    if (msg.discover_hubs_by_uri !== undefined) {
      resolved.discover_hubs_by_uri = msg.discover_hubs_by_uri;
    }
    else {
      resolved.discover_hubs_by_uri = []
    }

    if (msg.connected !== undefined) {
      resolved.connected = msg.connected;
    }
    else {
      resolved.connected = false
    }

    if (msg.ip !== undefined) {
      resolved.ip = msg.ip;
    }
    else {
      resolved.ip = ''
    }

    if (msg.hub_names !== undefined) {
      resolved.hub_names = msg.hub_names;
    }
    else {
      resolved.hub_names = []
    }

    if (msg.hub_uris !== undefined) {
      resolved.hub_uris = msg.hub_uris;
    }
    else {
      resolved.hub_uris = []
    }

    if (msg.firewall !== undefined) {
      resolved.firewall = msg.firewall;
    }
    else {
      resolved.firewall = false
    }

    if (msg.public_watchlist !== undefined) {
      resolved.public_watchlist = new Array(msg.public_watchlist.length);
      for (let i = 0; i < resolved.public_watchlist.length; ++i) {
        resolved.public_watchlist[i] = Rule.Resolve(msg.public_watchlist[i]);
      }
    }
    else {
      resolved.public_watchlist = []
    }

    if (msg.public_interface !== undefined) {
      resolved.public_interface = new Array(msg.public_interface.length);
      for (let i = 0; i < resolved.public_interface.length; ++i) {
        resolved.public_interface[i] = Rule.Resolve(msg.public_interface[i]);
      }
    }
    else {
      resolved.public_interface = []
    }

    if (msg.flipped_connections !== undefined) {
      resolved.flipped_connections = new Array(msg.flipped_connections.length);
      for (let i = 0; i < resolved.flipped_connections.length; ++i) {
        resolved.flipped_connections[i] = RemoteRuleWithStatus.Resolve(msg.flipped_connections[i]);
      }
    }
    else {
      resolved.flipped_connections = []
    }

    if (msg.flip_watchlist !== undefined) {
      resolved.flip_watchlist = new Array(msg.flip_watchlist.length);
      for (let i = 0; i < resolved.flip_watchlist.length; ++i) {
        resolved.flip_watchlist[i] = RemoteRule.Resolve(msg.flip_watchlist[i]);
      }
    }
    else {
      resolved.flip_watchlist = []
    }

    if (msg.flipped_in_connections !== undefined) {
      resolved.flipped_in_connections = new Array(msg.flipped_in_connections.length);
      for (let i = 0; i < resolved.flipped_in_connections.length; ++i) {
        resolved.flipped_in_connections[i] = RemoteRule.Resolve(msg.flipped_in_connections[i]);
      }
    }
    else {
      resolved.flipped_in_connections = []
    }

    if (msg.pull_watchlist !== undefined) {
      resolved.pull_watchlist = new Array(msg.pull_watchlist.length);
      for (let i = 0; i < resolved.pull_watchlist.length; ++i) {
        resolved.pull_watchlist[i] = RemoteRule.Resolve(msg.pull_watchlist[i]);
      }
    }
    else {
      resolved.pull_watchlist = []
    }

    if (msg.pulled_connections !== undefined) {
      resolved.pulled_connections = new Array(msg.pulled_connections.length);
      for (let i = 0; i < resolved.pulled_connections.length; ++i) {
        resolved.pulled_connections[i] = RemoteRule.Resolve(msg.pulled_connections[i]);
      }
    }
    else {
      resolved.pulled_connections = []
    }

    return resolved;
    }
};

module.exports = GatewayInfo;
