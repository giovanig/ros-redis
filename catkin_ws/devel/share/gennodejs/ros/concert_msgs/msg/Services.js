// Auto-generated. Do not edit!

// (in-package concert_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ServiceProfile = require('./ServiceProfile.js');

//-----------------------------------------------------------

class Services {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.services = null;
    }
    else {
      if (initObj.hasOwnProperty('services')) {
        this.services = initObj.services
      }
      else {
        this.services = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Services
    // Serialize message field [services]
    // Serialize the length for message field [services]
    bufferOffset = _serializer.uint32(obj.services.length, buffer, bufferOffset);
    obj.services.forEach((val) => {
      bufferOffset = ServiceProfile.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Services
    let len;
    let data = new Services(null);
    // Deserialize message field [services]
    // Deserialize array length for message field [services]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.services = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.services[i] = ServiceProfile.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.services.forEach((val) => {
      length += ServiceProfile.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'concert_msgs/Services';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '385406088e57b4886d05051733612cb1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ServiceProfile[] services
    
    ================================================================================
    MSG: concert_msgs/ServiceProfile
    # Constants - service types
    string TYPE_ROSLAUNCH = roslaunch
    string TYPE_CUSTOM    = custom
    string TYPE_SHADOW    = shadow
    
    # Pre-configured parameters
    string                      resource_name
    string                      name
    string                      description
    string                      author
    uint16                      priority
    rocon_std_msgs/Icon         icon
    string                      launcher_type
    string                      launcher
    string                      interactions
    string                      parameters
    rocon_std_msgs/KeyValue[]   parameters_detail
    
    # Initialised parameters (on startup)
    uuid_msgs/UniqueID          uuid
    
    # Runtime variables
    int16                       status
    bool                        enabled
    
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
    MSG: rocon_std_msgs/KeyValue
    string key
    string value
    ================================================================================
    MSG: uuid_msgs/UniqueID
    # A universally unique identifier (UUID).
    #
    #  http://en.wikipedia.org/wiki/Universally_unique_identifier
    #  http://tools.ietf.org/html/rfc4122.html
    
    uint8[16] uuid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Services(null);
    if (msg.services !== undefined) {
      resolved.services = new Array(msg.services.length);
      for (let i = 0; i < resolved.services.length; ++i) {
        resolved.services[i] = ServiceProfile.Resolve(msg.services[i]);
      }
    }
    else {
      resolved.services = []
    }

    return resolved;
    }
};

module.exports = Services;
