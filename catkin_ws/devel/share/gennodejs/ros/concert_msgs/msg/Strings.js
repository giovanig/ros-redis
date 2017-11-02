// Auto-generated. Do not edit!

// (in-package concert_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Strings {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Strings
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Strings
    let len;
    let data = new Strings(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'concert_msgs/Strings';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '38136d22fdc4ea7e6dd26ec382e266c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Some commonly used constant strings in the concert.
    #
    # Note: avoid using hardcoded topic_name strings here. Prefer rostopic.find_by_type
    # and rosservice.rosservice_find for getting services that should be unique
    # (e.g. gateway/interactions). Refer to rocon_python_comms for some wrappers around these.
    
    # Parameters
    string PARAM_ROCON_SCREEN = /rocon/screen
    
    # Scheduler
    string SCHEDULER_UNALLOCATED_RESOURCE = unallocated
    
    # Conductor
    string CONCERT_CLIENTS = /concert/conductor/concert_clients
    
    # Namespaces
    string SERVICE_NAMESPACE = /services
    string SOFTWARE_NAMESPACE = /software
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Strings(null);
    return resolved;
    }
};

// Constants for message
Strings.Constants = {
  PARAM_ROCON_SCREEN: '/rocon/screen',
  SCHEDULER_UNALLOCATED_RESOURCE: 'unallocated',
  CONCERT_CLIENTS: '/concert/conductor/concert_clients',
  SERVICE_NAMESPACE: '/services',
  SOFTWARE_NAMESPACE: '/software',
}

module.exports = Strings;
