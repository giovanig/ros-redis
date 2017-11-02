// Auto-generated. Do not edit!

// (in-package zeroconf_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DiscoveredService {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.type = null;
      this.domain = null;
      this.description = null;
      this.hostname = null;
      this.ipv4_addresses = null;
      this.ipv6_addresses = null;
      this.port = null;
      this.cookie = null;
      this.is_local = null;
      this.our_own = null;
      this.wide_area = null;
      this.multicast = null;
      this.cached = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('domain')) {
        this.domain = initObj.domain
      }
      else {
        this.domain = '';
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('hostname')) {
        this.hostname = initObj.hostname
      }
      else {
        this.hostname = '';
      }
      if (initObj.hasOwnProperty('ipv4_addresses')) {
        this.ipv4_addresses = initObj.ipv4_addresses
      }
      else {
        this.ipv4_addresses = [];
      }
      if (initObj.hasOwnProperty('ipv6_addresses')) {
        this.ipv6_addresses = initObj.ipv6_addresses
      }
      else {
        this.ipv6_addresses = [];
      }
      if (initObj.hasOwnProperty('port')) {
        this.port = initObj.port
      }
      else {
        this.port = 0;
      }
      if (initObj.hasOwnProperty('cookie')) {
        this.cookie = initObj.cookie
      }
      else {
        this.cookie = 0;
      }
      if (initObj.hasOwnProperty('is_local')) {
        this.is_local = initObj.is_local
      }
      else {
        this.is_local = false;
      }
      if (initObj.hasOwnProperty('our_own')) {
        this.our_own = initObj.our_own
      }
      else {
        this.our_own = false;
      }
      if (initObj.hasOwnProperty('wide_area')) {
        this.wide_area = initObj.wide_area
      }
      else {
        this.wide_area = false;
      }
      if (initObj.hasOwnProperty('multicast')) {
        this.multicast = initObj.multicast
      }
      else {
        this.multicast = false;
      }
      if (initObj.hasOwnProperty('cached')) {
        this.cached = initObj.cached
      }
      else {
        this.cached = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiscoveredService
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [domain]
    bufferOffset = _serializer.string(obj.domain, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [hostname]
    bufferOffset = _serializer.string(obj.hostname, buffer, bufferOffset);
    // Serialize message field [ipv4_addresses]
    bufferOffset = _arraySerializer.string(obj.ipv4_addresses, buffer, bufferOffset, null);
    // Serialize message field [ipv6_addresses]
    bufferOffset = _arraySerializer.string(obj.ipv6_addresses, buffer, bufferOffset, null);
    // Serialize message field [port]
    bufferOffset = _serializer.int32(obj.port, buffer, bufferOffset);
    // Serialize message field [cookie]
    bufferOffset = _serializer.uint32(obj.cookie, buffer, bufferOffset);
    // Serialize message field [is_local]
    bufferOffset = _serializer.bool(obj.is_local, buffer, bufferOffset);
    // Serialize message field [our_own]
    bufferOffset = _serializer.bool(obj.our_own, buffer, bufferOffset);
    // Serialize message field [wide_area]
    bufferOffset = _serializer.bool(obj.wide_area, buffer, bufferOffset);
    // Serialize message field [multicast]
    bufferOffset = _serializer.bool(obj.multicast, buffer, bufferOffset);
    // Serialize message field [cached]
    bufferOffset = _serializer.bool(obj.cached, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiscoveredService
    let len;
    let data = new DiscoveredService(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [domain]
    data.domain = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [hostname]
    data.hostname = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ipv4_addresses]
    data.ipv4_addresses = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [ipv6_addresses]
    data.ipv6_addresses = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [port]
    data.port = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cookie]
    data.cookie = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [is_local]
    data.is_local = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [our_own]
    data.our_own = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wide_area]
    data.wide_area = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [multicast]
    data.multicast = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cached]
    data.cached = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.type.length;
    length += object.domain.length;
    length += object.description.length;
    length += object.hostname.length;
    object.ipv4_addresses.forEach((val) => {
      length += 4 + val.length;
    });
    object.ipv6_addresses.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zeroconf_msgs/DiscoveredService';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3aabc6dd9875ef180c75536ad9a51d86';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # Provides all the properties required for definition of a discovered 
    # zeroconf service. Note that it contains rather alot more information
    # than that which is used to publish a zeroconf service.
    
    # Service Part
    string name
    string type
    string domain
    string description
    
    # Resolved part
    string hostname
    string[] ipv4_addresses
    string[] ipv6_addresses
    int32 port
    
    # These are detailed variables that you should not normally need
    # and can be safely ignored in most circumstances (currently used
    # by the avahi implementation).
    
    uint32 cookie
    bool is_local
    bool our_own
    bool wide_area
    bool multicast
    bool cached
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DiscoveredService(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.domain !== undefined) {
      resolved.domain = msg.domain;
    }
    else {
      resolved.domain = ''
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.hostname !== undefined) {
      resolved.hostname = msg.hostname;
    }
    else {
      resolved.hostname = ''
    }

    if (msg.ipv4_addresses !== undefined) {
      resolved.ipv4_addresses = msg.ipv4_addresses;
    }
    else {
      resolved.ipv4_addresses = []
    }

    if (msg.ipv6_addresses !== undefined) {
      resolved.ipv6_addresses = msg.ipv6_addresses;
    }
    else {
      resolved.ipv6_addresses = []
    }

    if (msg.port !== undefined) {
      resolved.port = msg.port;
    }
    else {
      resolved.port = 0
    }

    if (msg.cookie !== undefined) {
      resolved.cookie = msg.cookie;
    }
    else {
      resolved.cookie = 0
    }

    if (msg.is_local !== undefined) {
      resolved.is_local = msg.is_local;
    }
    else {
      resolved.is_local = false
    }

    if (msg.our_own !== undefined) {
      resolved.our_own = msg.our_own;
    }
    else {
      resolved.our_own = false
    }

    if (msg.wide_area !== undefined) {
      resolved.wide_area = msg.wide_area;
    }
    else {
      resolved.wide_area = false
    }

    if (msg.multicast !== undefined) {
      resolved.multicast = msg.multicast;
    }
    else {
      resolved.multicast = false
    }

    if (msg.cached !== undefined) {
      resolved.cached = msg.cached;
    }
    else {
      resolved.cached = false
    }

    return resolved;
    }
};

module.exports = DiscoveredService;
