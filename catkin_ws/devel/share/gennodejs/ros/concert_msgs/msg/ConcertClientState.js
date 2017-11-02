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

class ConcertClientState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConcertClientState
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConcertClientState
    let len;
    let data = new ConcertClientState(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'concert_msgs/ConcertClientState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '476d60b200b5f957baedb64ab2b71944';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # States of concert clients, these should always be synced with what is provided in ConductorGraph.msg
    # (for completeness, but also because I do some funny magic to extra the possible list of states from there). 
    
    # pending introspection, the client has been detected, but hasn't signalled that it wants to work with us yet
    string PENDING   = pending
    # the ip is invalid, unreachable or some other problem meaning we have to absolutely ignore it
    string BAD       = bad
    # is available for use inside this concert
    string AVAILABLE = available
    # has lost connection (wireless)
    string MISSING   = missing
    # has left the concert
    string GONE      = gone
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConcertClientState(null);
    return resolved;
    }
};

// Constants for message
ConcertClientState.Constants = {
  PENDING: 'pending',
  BAD: 'bad',
  AVAILABLE: 'available',
  MISSING: 'missing',
  GONE: 'gone',
}

module.exports = ConcertClientState;
