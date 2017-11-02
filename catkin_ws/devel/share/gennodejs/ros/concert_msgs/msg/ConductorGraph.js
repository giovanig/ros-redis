// Auto-generated. Do not edit!

// (in-package concert_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ConcertClient = require('./ConcertClient.js');

//-----------------------------------------------------------

class ConductorGraph {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pending = null;
      this.available = null;
      this.missing = null;
      this.gone = null;
    }
    else {
      if (initObj.hasOwnProperty('pending')) {
        this.pending = initObj.pending
      }
      else {
        this.pending = [];
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = [];
      }
      if (initObj.hasOwnProperty('missing')) {
        this.missing = initObj.missing
      }
      else {
        this.missing = [];
      }
      if (initObj.hasOwnProperty('gone')) {
        this.gone = initObj.gone
      }
      else {
        this.gone = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConductorGraph
    // Serialize message field [pending]
    // Serialize the length for message field [pending]
    bufferOffset = _serializer.uint32(obj.pending.length, buffer, bufferOffset);
    obj.pending.forEach((val) => {
      bufferOffset = ConcertClient.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [available]
    // Serialize the length for message field [available]
    bufferOffset = _serializer.uint32(obj.available.length, buffer, bufferOffset);
    obj.available.forEach((val) => {
      bufferOffset = ConcertClient.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [missing]
    // Serialize the length for message field [missing]
    bufferOffset = _serializer.uint32(obj.missing.length, buffer, bufferOffset);
    obj.missing.forEach((val) => {
      bufferOffset = ConcertClient.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [gone]
    // Serialize the length for message field [gone]
    bufferOffset = _serializer.uint32(obj.gone.length, buffer, bufferOffset);
    obj.gone.forEach((val) => {
      bufferOffset = ConcertClient.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConductorGraph
    let len;
    let data = new ConductorGraph(null);
    // Deserialize message field [pending]
    // Deserialize array length for message field [pending]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pending = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pending[i] = ConcertClient.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [available]
    // Deserialize array length for message field [available]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.available = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.available[i] = ConcertClient.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [missing]
    // Deserialize array length for message field [missing]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.missing = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.missing[i] = ConcertClient.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [gone]
    // Deserialize array length for message field [gone]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.gone = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.gone[i] = ConcertClient.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.pending.forEach((val) => {
      length += ConcertClient.getMessageSize(val);
    });
    object.available.forEach((val) => {
      length += ConcertClient.getMessageSize(val);
    });
    object.missing.forEach((val) => {
      length += ConcertClient.getMessageSize(val);
    });
    object.gone.forEach((val) => {
      length += ConcertClient.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'concert_msgs/ConductorGraph';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '79f1f3ca0d6e8e424874455f4beb1056';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 
    # Provide the conductor graph of all concert clients according to their current state (see
    # ConcertClientState.msg for a list of states and always sync with that!).
    # Compared to the regular ConcertClients topic, this includes
    # all those not in use by this concert, which is useful for introspection and debugging.
    #
    # It will typically show up in /concert/conductor/graph. Do not use this topic for
    # runtime handling (use only for introspection) as it will consume cycles. If no-one is
    # listening, this topic is lazy.  
    #
    concert_msgs/ConcertClient[] pending
    concert_msgs/ConcertClient[] available
    concert_msgs/ConcertClient[] missing
    concert_msgs/ConcertClient[] gone
    
    ================================================================================
    MSG: concert_msgs/ConcertClient
    
    # The concert alias
    string name
    
    # The unfriendly gateway name with the uuid suffix.
    string gateway_name
    
    # Platform information about the concert client.
    rocon_std_msgs/MasterInfo platform_info
    
    # Is on the same machine ip as the conductor
    bool is_local_client
    
    # State of the concert client, see ConcertClientState.msg for string constants
    # PENDING, BUSY, BLOCKING, BAD, JOINING, UNINVITED, AVAILABLE, MISSING, GONE 
    string state
    
    # Statistics
    string ip
    gateway_msgs/ConnectionStatistics conn_stats
    # time last_connection_timestamp
    
    rocon_app_manager_msgs/Rapp[] rapps
    
    ================================================================================
    MSG: rocon_std_msgs/MasterInfo
    # Publish basic information about this master.
    
    string name
    string rocon_uri
    string description
    rocon_std_msgs/Icon icon
    string version
    ================================================================================
    MSG: rocon_std_msgs/Icon
    # Used to idenfity the original package/filename resource this icon was/is to be loaded from
    # This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.
    string resource_name
    
    # Image data format.  "jpeg" or "png"
    string format
    
    # Image data.
    uint8[] data
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
    MSG: rocon_app_manager_msgs/Rapp
    # This is the message that gets published in list_rapps. Do not think of it as the
    # 'rapp' definition (since that is quite varied -> ancestor, virtual, child, implementation)
    # Rather it is the published list of rapps with the required information for the concert
    # and some introspection.
    
    # app name (ros resource name format, i.e. pkg/name, e.g. turtle_concert/teleop)
    string name
    # user-friendly display name
    string display_name
    string description
    # a rocon uri string indicating platform compatibility
    string compatibility
    string status
    
    # a list of implementations
    string[] implementations
    
    # A preferred rapp for virtual rapp
    string preferred
    
    # icon for showing the app
    rocon_std_msgs/Icon icon
    
    # public interface and parameters
    rocon_std_msgs/KeyValue[] public_interface
    rocon_std_msgs/KeyValue[] public_parameters
    
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
    const resolved = new ConductorGraph(null);
    if (msg.pending !== undefined) {
      resolved.pending = new Array(msg.pending.length);
      for (let i = 0; i < resolved.pending.length; ++i) {
        resolved.pending[i] = ConcertClient.Resolve(msg.pending[i]);
      }
    }
    else {
      resolved.pending = []
    }

    if (msg.available !== undefined) {
      resolved.available = new Array(msg.available.length);
      for (let i = 0; i < resolved.available.length; ++i) {
        resolved.available[i] = ConcertClient.Resolve(msg.available[i]);
      }
    }
    else {
      resolved.available = []
    }

    if (msg.missing !== undefined) {
      resolved.missing = new Array(msg.missing.length);
      for (let i = 0; i < resolved.missing.length; ++i) {
        resolved.missing[i] = ConcertClient.Resolve(msg.missing[i]);
      }
    }
    else {
      resolved.missing = []
    }

    if (msg.gone !== undefined) {
      resolved.gone = new Array(msg.gone.length);
      for (let i = 0; i < resolved.gone.length; ++i) {
        resolved.gone[i] = ConcertClient.Resolve(msg.gone[i]);
      }
    }
    else {
      resolved.gone = []
    }

    return resolved;
    }
};

module.exports = ConductorGraph;
