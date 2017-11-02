// Auto-generated. Do not edit!

// (in-package gateway_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ConnectionStatistics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gateway_available = null;
      this.time_since_last_seen = null;
      this.ping_latency_min = null;
      this.ping_latency_max = null;
      this.ping_latency_avg = null;
      this.ping_latency_mdev = null;
      this.network_info_available = null;
      this.network_type = null;
      this.wireless_bitrate = null;
      this.wireless_link_quality = null;
      this.wireless_signal_level = null;
      this.wireless_noise_level = null;
    }
    else {
      if (initObj.hasOwnProperty('gateway_available')) {
        this.gateway_available = initObj.gateway_available
      }
      else {
        this.gateway_available = false;
      }
      if (initObj.hasOwnProperty('time_since_last_seen')) {
        this.time_since_last_seen = initObj.time_since_last_seen
      }
      else {
        this.time_since_last_seen = 0;
      }
      if (initObj.hasOwnProperty('ping_latency_min')) {
        this.ping_latency_min = initObj.ping_latency_min
      }
      else {
        this.ping_latency_min = 0.0;
      }
      if (initObj.hasOwnProperty('ping_latency_max')) {
        this.ping_latency_max = initObj.ping_latency_max
      }
      else {
        this.ping_latency_max = 0.0;
      }
      if (initObj.hasOwnProperty('ping_latency_avg')) {
        this.ping_latency_avg = initObj.ping_latency_avg
      }
      else {
        this.ping_latency_avg = 0.0;
      }
      if (initObj.hasOwnProperty('ping_latency_mdev')) {
        this.ping_latency_mdev = initObj.ping_latency_mdev
      }
      else {
        this.ping_latency_mdev = 0.0;
      }
      if (initObj.hasOwnProperty('network_info_available')) {
        this.network_info_available = initObj.network_info_available
      }
      else {
        this.network_info_available = false;
      }
      if (initObj.hasOwnProperty('network_type')) {
        this.network_type = initObj.network_type
      }
      else {
        this.network_type = 0;
      }
      if (initObj.hasOwnProperty('wireless_bitrate')) {
        this.wireless_bitrate = initObj.wireless_bitrate
      }
      else {
        this.wireless_bitrate = 0.0;
      }
      if (initObj.hasOwnProperty('wireless_link_quality')) {
        this.wireless_link_quality = initObj.wireless_link_quality
      }
      else {
        this.wireless_link_quality = 0;
      }
      if (initObj.hasOwnProperty('wireless_signal_level')) {
        this.wireless_signal_level = initObj.wireless_signal_level
      }
      else {
        this.wireless_signal_level = 0.0;
      }
      if (initObj.hasOwnProperty('wireless_noise_level')) {
        this.wireless_noise_level = initObj.wireless_noise_level
      }
      else {
        this.wireless_noise_level = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConnectionStatistics
    // Serialize message field [gateway_available]
    bufferOffset = _serializer.bool(obj.gateway_available, buffer, bufferOffset);
    // Serialize message field [time_since_last_seen]
    bufferOffset = _serializer.int64(obj.time_since_last_seen, buffer, bufferOffset);
    // Serialize message field [ping_latency_min]
    bufferOffset = _serializer.float32(obj.ping_latency_min, buffer, bufferOffset);
    // Serialize message field [ping_latency_max]
    bufferOffset = _serializer.float32(obj.ping_latency_max, buffer, bufferOffset);
    // Serialize message field [ping_latency_avg]
    bufferOffset = _serializer.float32(obj.ping_latency_avg, buffer, bufferOffset);
    // Serialize message field [ping_latency_mdev]
    bufferOffset = _serializer.float32(obj.ping_latency_mdev, buffer, bufferOffset);
    // Serialize message field [network_info_available]
    bufferOffset = _serializer.bool(obj.network_info_available, buffer, bufferOffset);
    // Serialize message field [network_type]
    bufferOffset = _serializer.int8(obj.network_type, buffer, bufferOffset);
    // Serialize message field [wireless_bitrate]
    bufferOffset = _serializer.float32(obj.wireless_bitrate, buffer, bufferOffset);
    // Serialize message field [wireless_link_quality]
    bufferOffset = _serializer.int8(obj.wireless_link_quality, buffer, bufferOffset);
    // Serialize message field [wireless_signal_level]
    bufferOffset = _serializer.float32(obj.wireless_signal_level, buffer, bufferOffset);
    // Serialize message field [wireless_noise_level]
    bufferOffset = _serializer.float32(obj.wireless_noise_level, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConnectionStatistics
    let len;
    let data = new ConnectionStatistics(null);
    // Deserialize message field [gateway_available]
    data.gateway_available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [time_since_last_seen]
    data.time_since_last_seen = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [ping_latency_min]
    data.ping_latency_min = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ping_latency_max]
    data.ping_latency_max = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ping_latency_avg]
    data.ping_latency_avg = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ping_latency_mdev]
    data.ping_latency_mdev = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [network_info_available]
    data.network_info_available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [network_type]
    data.network_type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [wireless_bitrate]
    data.wireless_bitrate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wireless_link_quality]
    data.wireless_link_quality = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [wireless_signal_level]
    data.wireless_signal_level = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wireless_noise_level]
    data.wireless_noise_level = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gateway_msgs/ConnectionStatistics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '672067d5ab3e6157dcf8224022da3ee6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConnectionStatistics(null);
    if (msg.gateway_available !== undefined) {
      resolved.gateway_available = msg.gateway_available;
    }
    else {
      resolved.gateway_available = false
    }

    if (msg.time_since_last_seen !== undefined) {
      resolved.time_since_last_seen = msg.time_since_last_seen;
    }
    else {
      resolved.time_since_last_seen = 0
    }

    if (msg.ping_latency_min !== undefined) {
      resolved.ping_latency_min = msg.ping_latency_min;
    }
    else {
      resolved.ping_latency_min = 0.0
    }

    if (msg.ping_latency_max !== undefined) {
      resolved.ping_latency_max = msg.ping_latency_max;
    }
    else {
      resolved.ping_latency_max = 0.0
    }

    if (msg.ping_latency_avg !== undefined) {
      resolved.ping_latency_avg = msg.ping_latency_avg;
    }
    else {
      resolved.ping_latency_avg = 0.0
    }

    if (msg.ping_latency_mdev !== undefined) {
      resolved.ping_latency_mdev = msg.ping_latency_mdev;
    }
    else {
      resolved.ping_latency_mdev = 0.0
    }

    if (msg.network_info_available !== undefined) {
      resolved.network_info_available = msg.network_info_available;
    }
    else {
      resolved.network_info_available = false
    }

    if (msg.network_type !== undefined) {
      resolved.network_type = msg.network_type;
    }
    else {
      resolved.network_type = 0
    }

    if (msg.wireless_bitrate !== undefined) {
      resolved.wireless_bitrate = msg.wireless_bitrate;
    }
    else {
      resolved.wireless_bitrate = 0.0
    }

    if (msg.wireless_link_quality !== undefined) {
      resolved.wireless_link_quality = msg.wireless_link_quality;
    }
    else {
      resolved.wireless_link_quality = 0
    }

    if (msg.wireless_signal_level !== undefined) {
      resolved.wireless_signal_level = msg.wireless_signal_level;
    }
    else {
      resolved.wireless_signal_level = 0.0
    }

    if (msg.wireless_noise_level !== undefined) {
      resolved.wireless_noise_level = msg.wireless_noise_level;
    }
    else {
      resolved.wireless_noise_level = 0.0
    }

    return resolved;
    }
};

// Constants for message
ConnectionStatistics.Constants = {
  WIRED: 1,
  WIRELESS: 2,
  MAX_TTL: 86400,
}

module.exports = ConnectionStatistics;
