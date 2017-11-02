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

class ConcertClients {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.clients = null;
      this.missing_clients = null;
      this.pending_clients = null;
    }
    else {
      if (initObj.hasOwnProperty('clients')) {
        this.clients = initObj.clients
      }
      else {
        this.clients = [];
      }
      if (initObj.hasOwnProperty('missing_clients')) {
        this.missing_clients = initObj.missing_clients
      }
      else {
        this.missing_clients = [];
      }
      if (initObj.hasOwnProperty('pending_clients')) {
        this.pending_clients = initObj.pending_clients
      }
      else {
        this.pending_clients = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConcertClients
    // Serialize message field [clients]
    // Serialize the length for message field [clients]
    bufferOffset = _serializer.uint32(obj.clients.length, buffer, bufferOffset);
    obj.clients.forEach((val) => {
      bufferOffset = ConcertClient.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [missing_clients]
    // Serialize the length for message field [missing_clients]
    bufferOffset = _serializer.uint32(obj.missing_clients.length, buffer, bufferOffset);
    obj.missing_clients.forEach((val) => {
      bufferOffset = ConcertClient.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pending_clients]
    // Serialize the length for message field [pending_clients]
    bufferOffset = _serializer.uint32(obj.pending_clients.length, buffer, bufferOffset);
    obj.pending_clients.forEach((val) => {
      bufferOffset = ConcertClient.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConcertClients
    let len;
    let data = new ConcertClients(null);
    // Deserialize message field [clients]
    // Deserialize array length for message field [clients]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.clients = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.clients[i] = ConcertClient.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [missing_clients]
    // Deserialize array length for message field [missing_clients]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.missing_clients = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.missing_clients[i] = ConcertClient.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pending_clients]
    // Deserialize array length for message field [pending_clients]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pending_clients = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pending_clients[i] = ConcertClient.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.clients.forEach((val) => {
      length += ConcertClient.getMessageSize(val);
    });
    object.missing_clients.forEach((val) => {
      length += ConcertClient.getMessageSize(val);
    });
    object.pending_clients.forEach((val) => {
      length += ConcertClient.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'concert_msgs/ConcertClients';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6950d7da025bef00c62c809b8487d74f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # Clients that have been invited to this concert and can be used
    concert_msgs/ConcertClient[] clients
    
    # Clients that have disappeared from the gateway network without formally leaving. 
    # Usually this will mean they have dropped off the wireless
    concert_msgs/ConcertClient[] missing_clients
    
    # Clients that are on the gateway network, but haven't been invited by this concert yet
    # We do not have any implementation that can invite except by a conductor's auto_invite yet.
    concert_msgs/ConcertClient[] pending_clients
    
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
    const resolved = new ConcertClients(null);
    if (msg.clients !== undefined) {
      resolved.clients = new Array(msg.clients.length);
      for (let i = 0; i < resolved.clients.length; ++i) {
        resolved.clients[i] = ConcertClient.Resolve(msg.clients[i]);
      }
    }
    else {
      resolved.clients = []
    }

    if (msg.missing_clients !== undefined) {
      resolved.missing_clients = new Array(msg.missing_clients.length);
      for (let i = 0; i < resolved.missing_clients.length; ++i) {
        resolved.missing_clients[i] = ConcertClient.Resolve(msg.missing_clients[i]);
      }
    }
    else {
      resolved.missing_clients = []
    }

    if (msg.pending_clients !== undefined) {
      resolved.pending_clients = new Array(msg.pending_clients.length);
      for (let i = 0; i < resolved.pending_clients.length; ++i) {
        resolved.pending_clients[i] = ConcertClient.Resolve(msg.pending_clients[i]);
      }
    }
    else {
      resolved.pending_clients = []
    }

    return resolved;
    }
};

module.exports = ConcertClients;
