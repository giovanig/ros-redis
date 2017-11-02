// Auto-generated. Do not edit!

// (in-package concert_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ServiceProfile = require('../msg/ServiceProfile.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class UpdateServiceConfigRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.service_profile = null;
    }
    else {
      if (initObj.hasOwnProperty('service_profile')) {
        this.service_profile = initObj.service_profile
      }
      else {
        this.service_profile = new ServiceProfile();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateServiceConfigRequest
    // Serialize message field [service_profile]
    bufferOffset = ServiceProfile.serialize(obj.service_profile, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateServiceConfigRequest
    let len;
    let data = new UpdateServiceConfigRequest(null);
    // Deserialize message field [service_profile]
    data.service_profile = ServiceProfile.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ServiceProfile.getMessageSize(object.service_profile);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'concert_msgs/UpdateServiceConfigRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd91b5c9853bc0d14302939f48cf1cf3e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ServiceProfile service_profile
    
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
    const resolved = new UpdateServiceConfigRequest(null);
    if (msg.service_profile !== undefined) {
      resolved.service_profile = ServiceProfile.Resolve(msg.service_profile)
    }
    else {
      resolved.service_profile = new ServiceProfile()
    }

    return resolved;
    }
};

class UpdateServiceConfigResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error_message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('error_message')) {
        this.error_message = initObj.error_message
      }
      else {
        this.error_message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateServiceConfigResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_message]
    bufferOffset = _serializer.string(obj.error_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateServiceConfigResponse
    let len;
    let data = new UpdateServiceConfigResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_message]
    data.error_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.error_message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'concert_msgs/UpdateServiceConfigResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fe914479ce03184a758c3f6990c928f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string error_message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateServiceConfigResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.error_message !== undefined) {
      resolved.error_message = msg.error_message;
    }
    else {
      resolved.error_message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: UpdateServiceConfigRequest,
  Response: UpdateServiceConfigResponse,
  md5sum() { return 'c2c38c5e15ad95a99a740e6b43e333e5'; },
  datatype() { return 'concert_msgs/UpdateServiceConfig'; }
};
