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
let rocon_app_manager_msgs = _finder('rocon_app_manager_msgs');
let gateway_msgs = _finder('gateway_msgs');

//-----------------------------------------------------------

class ConcertClient {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.gateway_name = null;
      this.platform_info = null;
      this.is_local_client = null;
      this.state = null;
      this.ip = null;
      this.conn_stats = null;
      this.rapps = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('gateway_name')) {
        this.gateway_name = initObj.gateway_name
      }
      else {
        this.gateway_name = '';
      }
      if (initObj.hasOwnProperty('platform_info')) {
        this.platform_info = initObj.platform_info
      }
      else {
        this.platform_info = new rocon_std_msgs.msg.MasterInfo();
      }
      if (initObj.hasOwnProperty('is_local_client')) {
        this.is_local_client = initObj.is_local_client
      }
      else {
        this.is_local_client = false;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('ip')) {
        this.ip = initObj.ip
      }
      else {
        this.ip = '';
      }
      if (initObj.hasOwnProperty('conn_stats')) {
        this.conn_stats = initObj.conn_stats
      }
      else {
        this.conn_stats = new gateway_msgs.msg.ConnectionStatistics();
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
    // Serializes a message object of type ConcertClient
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [gateway_name]
    bufferOffset = _serializer.string(obj.gateway_name, buffer, bufferOffset);
    // Serialize message field [platform_info]
    bufferOffset = rocon_std_msgs.msg.MasterInfo.serialize(obj.platform_info, buffer, bufferOffset);
    // Serialize message field [is_local_client]
    bufferOffset = _serializer.bool(obj.is_local_client, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [ip]
    bufferOffset = _serializer.string(obj.ip, buffer, bufferOffset);
    // Serialize message field [conn_stats]
    bufferOffset = gateway_msgs.msg.ConnectionStatistics.serialize(obj.conn_stats, buffer, bufferOffset);
    // Serialize message field [rapps]
    // Serialize the length for message field [rapps]
    bufferOffset = _serializer.uint32(obj.rapps.length, buffer, bufferOffset);
    obj.rapps.forEach((val) => {
      bufferOffset = rocon_app_manager_msgs.msg.Rapp.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConcertClient
    let len;
    let data = new ConcertClient(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gateway_name]
    data.gateway_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [platform_info]
    data.platform_info = rocon_std_msgs.msg.MasterInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_local_client]
    data.is_local_client = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ip]
    data.ip = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [conn_stats]
    data.conn_stats = gateway_msgs.msg.ConnectionStatistics.deserialize(buffer, bufferOffset);
    // Deserialize message field [rapps]
    // Deserialize array length for message field [rapps]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.rapps = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.rapps[i] = rocon_app_manager_msgs.msg.Rapp.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.gateway_name.length;
    length += rocon_std_msgs.msg.MasterInfo.getMessageSize(object.platform_info);
    length += object.state.length;
    length += object.ip.length;
    object.rapps.forEach((val) => {
      length += rocon_app_manager_msgs.msg.Rapp.getMessageSize(val);
    });
    return length + 61;
  }

  static datatype() {
    // Returns string type for a message object
    return 'concert_msgs/ConcertClient';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e86054949de7944800d67af80496ca28';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
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
    const resolved = new ConcertClient(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.gateway_name !== undefined) {
      resolved.gateway_name = msg.gateway_name;
    }
    else {
      resolved.gateway_name = ''
    }

    if (msg.platform_info !== undefined) {
      resolved.platform_info = rocon_std_msgs.msg.MasterInfo.Resolve(msg.platform_info)
    }
    else {
      resolved.platform_info = new rocon_std_msgs.msg.MasterInfo()
    }

    if (msg.is_local_client !== undefined) {
      resolved.is_local_client = msg.is_local_client;
    }
    else {
      resolved.is_local_client = false
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.ip !== undefined) {
      resolved.ip = msg.ip;
    }
    else {
      resolved.ip = ''
    }

    if (msg.conn_stats !== undefined) {
      resolved.conn_stats = gateway_msgs.msg.ConnectionStatistics.Resolve(msg.conn_stats)
    }
    else {
      resolved.conn_stats = new gateway_msgs.msg.ConnectionStatistics()
    }

    if (msg.rapps !== undefined) {
      resolved.rapps = new Array(msg.rapps.length);
      for (let i = 0; i < resolved.rapps.length; ++i) {
        resolved.rapps[i] = rocon_app_manager_msgs.msg.Rapp.Resolve(msg.rapps[i]);
      }
    }
    else {
      resolved.rapps = []
    }

    return resolved;
    }
};

module.exports = ConcertClient;
