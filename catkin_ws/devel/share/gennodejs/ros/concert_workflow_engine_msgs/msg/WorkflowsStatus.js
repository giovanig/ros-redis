// Auto-generated. Do not edit!

// (in-package concert_workflow_engine_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WorkflowsStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.service_name = null;
      this.status = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('service_name')) {
        this.service_name = initObj.service_name
      }
      else {
        this.service_name = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WorkflowsStatus
    // Serialize message field [service_name]
    bufferOffset = _serializer.string(obj.service_name, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int8(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WorkflowsStatus
    let len;
    let data = new WorkflowsStatus(null);
    // Deserialize message field [service_name]
    data.service_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.service_name.length;
    length += object.message.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'concert_workflow_engine_msgs/WorkflowsStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24fa7d7ee2f6b7cfe974804fbd2e1ae0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #pre-define workflow status
    int8 READY = 1
    int8 START = 2
    int8 RUNNING = 3
    int8 STOP = 4
    int8 ERROR = -1
    
    string service_name # service name to launch workflow
    int8 status # status of workflow
    string message # user friendly message
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WorkflowsStatus(null);
    if (msg.service_name !== undefined) {
      resolved.service_name = msg.service_name;
    }
    else {
      resolved.service_name = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

// Constants for message
WorkflowsStatus.Constants = {
  READY: 1,
  START: 2,
  RUNNING: 3,
  STOP: 4,
  ERROR: -1,
}

module.exports = WorkflowsStatus;
