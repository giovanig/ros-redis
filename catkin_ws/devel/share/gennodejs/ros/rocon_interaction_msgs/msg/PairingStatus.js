// Auto-generated. Do not edit!

// (in-package rocon_interaction_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PairingStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.active_pairing = null;
    }
    else {
      if (initObj.hasOwnProperty('active_pairing')) {
        this.active_pairing = initObj.active_pairing
      }
      else {
        this.active_pairing = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PairingStatus
    // Serialize message field [active_pairing]
    bufferOffset = _serializer.string(obj.active_pairing, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PairingStatus
    let len;
    let data = new PairingStatus(null);
    // Deserialize message field [active_pairing]
    data.active_pairing = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.active_pairing.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_interaction_msgs/PairingStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b404b2284f2d7e4f38394ad5a36be453';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Use this message to send/receive live information about the interaction
    # manager's state relevant to pairing.
    
    # This is useful for remocons to know when a rapp goes up/down or to
    # provide updates about whether there are 
    
    # The hash id of the active core interaction (one sided pair).
    # Remocons should highlight this as a running interaction in their views.
    string active_pairing
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PairingStatus(null);
    if (msg.active_pairing !== undefined) {
      resolved.active_pairing = msg.active_pairing;
    }
    else {
      resolved.active_pairing = ''
    }

    return resolved;
    }
};

module.exports = PairingStatus;
