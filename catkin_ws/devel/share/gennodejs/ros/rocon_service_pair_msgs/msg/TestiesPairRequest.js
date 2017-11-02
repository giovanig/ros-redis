// Auto-generated. Do not edit!

// (in-package rocon_service_pair_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TestiesRequest = require('./TestiesRequest.js');
let uuid_msgs = _finder('uuid_msgs');

//-----------------------------------------------------------

class TestiesPairRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.request = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('request')) {
        this.request = initObj.request
      }
      else {
        this.request = new TestiesRequest();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestiesPairRequest
    // Serialize message field [id]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [request]
    bufferOffset = TestiesRequest.serialize(obj.request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestiesPairRequest
    let len;
    let data = new TestiesPairRequest(null);
    // Deserialize message field [id]
    data.id = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [request]
    data.request = TestiesRequest.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += TestiesRequest.getMessageSize(object.request);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_service_pair_msgs/TestiesPairRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '71ec95e384ce52aa32491f3b69a62027';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uuid_msgs/UniqueID id
    TestiesRequest request
    
    ================================================================================
    MSG: uuid_msgs/UniqueID
    # A universally unique identifier (UUID).
    #
    #  http://en.wikipedia.org/wiki/Universally_unique_identifier
    #  http://tools.ietf.org/html/rfc4122.html
    
    uint8[16] uuid
    
    ================================================================================
    MSG: rocon_service_pair_msgs/TestiesRequest
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestiesPairRequest(null);
    if (msg.id !== undefined) {
      resolved.id = uuid_msgs.msg.UniqueID.Resolve(msg.id)
    }
    else {
      resolved.id = new uuid_msgs.msg.UniqueID()
    }

    if (msg.request !== undefined) {
      resolved.request = TestiesRequest.Resolve(msg.request)
    }
    else {
      resolved.request = new TestiesRequest()
    }

    return resolved;
    }
};

module.exports = TestiesPairRequest;
