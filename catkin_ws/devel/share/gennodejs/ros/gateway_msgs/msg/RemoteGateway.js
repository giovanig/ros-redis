// Auto-generated. Do not edit!

// (in-package gateway_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ConnectionStatistics = require('./ConnectionStatistics.js');
let Rule = require('./Rule.js');
let RemoteRule = require('./RemoteRule.js');

//-----------------------------------------------------------

class RemoteGateway {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.ip = null;
      this.firewall = null;
      this.conn_stats = null;
      this.public_interface = null;
      this.flipped_interface = null;
      this.pulled_interface = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('ip')) {
        this.ip = initObj.ip
      }
      else {
        this.ip = '';
      }
      if (initObj.hasOwnProperty('firewall')) {
        this.firewall = initObj.firewall
      }
      else {
        this.firewall = false;
      }
      if (initObj.hasOwnProperty('conn_stats')) {
        this.conn_stats = initObj.conn_stats
      }
      else {
        this.conn_stats = new ConnectionStatistics();
      }
      if (initObj.hasOwnProperty('public_interface')) {
        this.public_interface = initObj.public_interface
      }
      else {
        this.public_interface = [];
      }
      if (initObj.hasOwnProperty('flipped_interface')) {
        this.flipped_interface = initObj.flipped_interface
      }
      else {
        this.flipped_interface = [];
      }
      if (initObj.hasOwnProperty('pulled_interface')) {
        this.pulled_interface = initObj.pulled_interface
      }
      else {
        this.pulled_interface = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoteGateway
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [ip]
    bufferOffset = _serializer.string(obj.ip, buffer, bufferOffset);
    // Serialize message field [firewall]
    bufferOffset = _serializer.bool(obj.firewall, buffer, bufferOffset);
    // Serialize message field [conn_stats]
    bufferOffset = ConnectionStatistics.serialize(obj.conn_stats, buffer, bufferOffset);
    // Serialize message field [public_interface]
    // Serialize the length for message field [public_interface]
    bufferOffset = _serializer.uint32(obj.public_interface.length, buffer, bufferOffset);
    obj.public_interface.forEach((val) => {
      bufferOffset = Rule.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [flipped_interface]
    // Serialize the length for message field [flipped_interface]
    bufferOffset = _serializer.uint32(obj.flipped_interface.length, buffer, bufferOffset);
    obj.flipped_interface.forEach((val) => {
      bufferOffset = RemoteRule.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pulled_interface]
    // Serialize the length for message field [pulled_interface]
    bufferOffset = _serializer.uint32(obj.pulled_interface.length, buffer, bufferOffset);
    obj.pulled_interface.forEach((val) => {
      bufferOffset = RemoteRule.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoteGateway
    let len;
    let data = new RemoteGateway(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ip]
    data.ip = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [firewall]
    data.firewall = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [conn_stats]
    data.conn_stats = ConnectionStatistics.deserialize(buffer, bufferOffset);
    // Deserialize message field [public_interface]
    // Deserialize array length for message field [public_interface]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.public_interface = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.public_interface[i] = Rule.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [flipped_interface]
    // Deserialize array length for message field [flipped_interface]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.flipped_interface = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.flipped_interface[i] = RemoteRule.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pulled_interface]
    // Deserialize array length for message field [pulled_interface]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pulled_interface = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pulled_interface[i] = RemoteRule.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.ip.length;
    object.public_interface.forEach((val) => {
      length += Rule.getMessageSize(val);
    });
    object.flipped_interface.forEach((val) => {
      length += RemoteRule.getMessageSize(val);
    });
    object.pulled_interface.forEach((val) => {
      length += RemoteRule.getMessageSize(val);
    });
    return length + 61;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gateway_msgs/RemoteGateway';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58607c66cd963e494a28cb3f919087f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ###### Gateway information ######
    string name
    string ip
    #TODO blocking status
    bool firewall
    
    # Remote Gateway Statistics
    
    # Constants
    int8 WIRED = 1
    int8 WIRELESS = 2
    
    #Connection Statistics
    ConnectionStatistics conn_stats
    
    ###### Public Interface ######
    
    Rule[] public_interface
    
    ###### Flipped Interface ######
    
    # Flipped and pulled interfaces would be useful for debugging 
    #    https://github.com/robotics-in-concert/rocon_multimaster/issues/84
    
    RemoteRule[] flipped_interface
    RemoteRule[] pulled_interface
    
    ###### Foreign Interface ######
    
    # Q) Should we show these?
    # A) Probably not, in the overall scheme of things, 
    #    it doubles up the information from above
    
    # RemoteRule[] flipped_in_connections
    # RemoteRule[] pulled_connections
    
    ================================================================================
    MSG: gateway_msgs/ConnectionStatistics
    # Constants
    int8 WIRED = 1
    int8 WIRELESS = 2
    int32 MAX_TTL = 86400
    
    # Gateway ping indicators
    bool gateway_available
    int64 time_since_last_seen #time in seconds since last ping successful
    float32 ping_latency_min
    float32 ping_latency_max
    float32 ping_latency_avg
    float32 ping_latency_mdev #mean absolute deviation
    
    # Gateway network information indicators
    bool network_info_available
    int8 network_type
    float32 wireless_bitrate
    int8 wireless_link_quality
    float32 wireless_signal_level
    float32 wireless_noise_level
    
    
    
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
    const resolved = new RemoteGateway(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.ip !== undefined) {
      resolved.ip = msg.ip;
    }
    else {
      resolved.ip = ''
    }

    if (msg.firewall !== undefined) {
      resolved.firewall = msg.firewall;
    }
    else {
      resolved.firewall = false
    }

    if (msg.conn_stats !== undefined) {
      resolved.conn_stats = ConnectionStatistics.Resolve(msg.conn_stats)
    }
    else {
      resolved.conn_stats = new ConnectionStatistics()
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

    if (msg.flipped_interface !== undefined) {
      resolved.flipped_interface = new Array(msg.flipped_interface.length);
      for (let i = 0; i < resolved.flipped_interface.length; ++i) {
        resolved.flipped_interface[i] = RemoteRule.Resolve(msg.flipped_interface[i]);
      }
    }
    else {
      resolved.flipped_interface = []
    }

    if (msg.pulled_interface !== undefined) {
      resolved.pulled_interface = new Array(msg.pulled_interface.length);
      for (let i = 0; i < resolved.pulled_interface.length; ++i) {
        resolved.pulled_interface[i] = RemoteRule.Resolve(msg.pulled_interface[i]);
      }
    }
    else {
      resolved.pulled_interface = []
    }

    return resolved;
    }
};

// Constants for message
RemoteGateway.Constants = {
  WIRED: 1,
  WIRELESS: 2,
}

module.exports = RemoteGateway;
