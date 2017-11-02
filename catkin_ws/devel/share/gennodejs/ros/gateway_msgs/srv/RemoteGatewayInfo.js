// Auto-generated. Do not edit!

// (in-package gateway_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let RemoteGateway = require('../msg/RemoteGateway.js');

//-----------------------------------------------------------

class RemoteGatewayInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gateways = null;
    }
    else {
      if (initObj.hasOwnProperty('gateways')) {
        this.gateways = initObj.gateways
      }
      else {
        this.gateways = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoteGatewayInfoRequest
    // Serialize message field [gateways]
    bufferOffset = _arraySerializer.string(obj.gateways, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoteGatewayInfoRequest
    let len;
    let data = new RemoteGatewayInfoRequest(null);
    // Deserialize message field [gateways]
    data.gateways = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.gateways.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gateway_msgs/RemoteGatewayInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e005eaac1f4b29980f211758e562aa6e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    string[] gateways
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RemoteGatewayInfoRequest(null);
    if (msg.gateways !== undefined) {
      resolved.gateways = msg.gateways;
    }
    else {
      resolved.gateways = []
    }

    return resolved;
    }
};

class RemoteGatewayInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gateways = null;
    }
    else {
      if (initObj.hasOwnProperty('gateways')) {
        this.gateways = initObj.gateways
      }
      else {
        this.gateways = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoteGatewayInfoResponse
    // Serialize message field [gateways]
    // Serialize the length for message field [gateways]
    bufferOffset = _serializer.uint32(obj.gateways.length, buffer, bufferOffset);
    obj.gateways.forEach((val) => {
      bufferOffset = RemoteGateway.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoteGatewayInfoResponse
    let len;
    let data = new RemoteGatewayInfoResponse(null);
    // Deserialize message field [gateways]
    // Deserialize array length for message field [gateways]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.gateways = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.gateways[i] = RemoteGateway.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.gateways.forEach((val) => {
      length += RemoteGateway.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gateway_msgs/RemoteGatewayInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '21c329af996537695f35402c601485df';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    RemoteGateway[] gateways
    
    
    ================================================================================
    MSG: gateway_msgs/RemoteGateway
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
    const resolved = new RemoteGatewayInfoResponse(null);
    if (msg.gateways !== undefined) {
      resolved.gateways = new Array(msg.gateways.length);
      for (let i = 0; i < resolved.gateways.length; ++i) {
        resolved.gateways[i] = RemoteGateway.Resolve(msg.gateways[i]);
      }
    }
    else {
      resolved.gateways = []
    }

    return resolved;
    }
};

module.exports = {
  Request: RemoteGatewayInfoRequest,
  Response: RemoteGatewayInfoResponse,
  md5sum() { return '21b6c2a53d6cebe0c03f90dd0c85b58d'; },
  datatype() { return 'gateway_msgs/RemoteGatewayInfo'; }
};
