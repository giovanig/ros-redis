// Auto-generated. Do not edit!

// (in-package rocon_app_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Rapp = require('./Rapp.js');
let PublishedInterface = require('./PublishedInterface.js');
let rocon_std_msgs = _finder('rocon_std_msgs');

//-----------------------------------------------------------

class Status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.application_namespace = null;
      this.remote_controller = null;
      this.rapp_status = null;
      this.rapp = null;
      this.published_interfaces = null;
      this.published_parameters = null;
    }
    else {
      if (initObj.hasOwnProperty('application_namespace')) {
        this.application_namespace = initObj.application_namespace
      }
      else {
        this.application_namespace = '';
      }
      if (initObj.hasOwnProperty('remote_controller')) {
        this.remote_controller = initObj.remote_controller
      }
      else {
        this.remote_controller = '';
      }
      if (initObj.hasOwnProperty('rapp_status')) {
        this.rapp_status = initObj.rapp_status
      }
      else {
        this.rapp_status = '';
      }
      if (initObj.hasOwnProperty('rapp')) {
        this.rapp = initObj.rapp
      }
      else {
        this.rapp = new Rapp();
      }
      if (initObj.hasOwnProperty('published_interfaces')) {
        this.published_interfaces = initObj.published_interfaces
      }
      else {
        this.published_interfaces = [];
      }
      if (initObj.hasOwnProperty('published_parameters')) {
        this.published_parameters = initObj.published_parameters
      }
      else {
        this.published_parameters = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Status
    // Serialize message field [application_namespace]
    bufferOffset = _serializer.string(obj.application_namespace, buffer, bufferOffset);
    // Serialize message field [remote_controller]
    bufferOffset = _serializer.string(obj.remote_controller, buffer, bufferOffset);
    // Serialize message field [rapp_status]
    bufferOffset = _serializer.string(obj.rapp_status, buffer, bufferOffset);
    // Serialize message field [rapp]
    bufferOffset = Rapp.serialize(obj.rapp, buffer, bufferOffset);
    // Serialize message field [published_interfaces]
    // Serialize the length for message field [published_interfaces]
    bufferOffset = _serializer.uint32(obj.published_interfaces.length, buffer, bufferOffset);
    obj.published_interfaces.forEach((val) => {
      bufferOffset = PublishedInterface.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [published_parameters]
    // Serialize the length for message field [published_parameters]
    bufferOffset = _serializer.uint32(obj.published_parameters.length, buffer, bufferOffset);
    obj.published_parameters.forEach((val) => {
      bufferOffset = rocon_std_msgs.msg.KeyValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Status
    let len;
    let data = new Status(null);
    // Deserialize message field [application_namespace]
    data.application_namespace = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [remote_controller]
    data.remote_controller = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rapp_status]
    data.rapp_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rapp]
    data.rapp = Rapp.deserialize(buffer, bufferOffset);
    // Deserialize message field [published_interfaces]
    // Deserialize array length for message field [published_interfaces]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.published_interfaces = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.published_interfaces[i] = PublishedInterface.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [published_parameters]
    // Deserialize array length for message field [published_parameters]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.published_parameters = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.published_parameters[i] = rocon_std_msgs.msg.KeyValue.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.application_namespace.length;
    length += object.remote_controller.length;
    length += object.rapp_status.length;
    length += Rapp.getMessageSize(object.rapp);
    object.published_interfaces.forEach((val) => {
      length += PublishedInterface.getMessageSize(val);
    });
    object.published_parameters.forEach((val) => {
      length += rocon_std_msgs.msg.KeyValue.getMessageSize(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rocon_app_manager_msgs/Status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '845a2087bbeabf6770c4fda9fcc80442';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Namespace under which applications will run if connected
    string application_namespace
    
    # Who is controlling the app manager (i.e. who invited it to send it's
    # control handles). If the empty string, it is not being controlled 
    # and subsequently is available
    string remote_controller
    
    # Rapp is running or not
    string RAPP_STOPPED=stopped
    string RAPP_RUNNING=running
    string rapp_status
    
    # Current app details (if running), a default Rapp() (filled with empty strings and lists) otherwise
    Rapp rapp
    
    # The runtime, possibly namespaced and remapped interfaces/parameters
    PublishedInterface[] published_interfaces
    rocon_std_msgs/KeyValue[] published_parameters
    
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
    MSG: rocon_app_manager_msgs/PublishedInterface
    # The runtime, possibly namespaced and remapped public interface.
    
    PublicInterface interface
    
    # Final absolute namespaced/remapped name of the topic/service/action xxx
    string name
    ================================================================================
    MSG: rocon_app_manager_msgs/PublicInterface
    # Represents a public interface of a rapp
    
    # One of rocon_std_msgs.Connection type string constants ('publisher, 'subscriber', ...)
    string connection_type
    
    # The data type, e.g. std_msgs/Strings
    string data_type
    
    # Name of the topic/service/action xxx.
    string name
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Status(null);
    if (msg.application_namespace !== undefined) {
      resolved.application_namespace = msg.application_namespace;
    }
    else {
      resolved.application_namespace = ''
    }

    if (msg.remote_controller !== undefined) {
      resolved.remote_controller = msg.remote_controller;
    }
    else {
      resolved.remote_controller = ''
    }

    if (msg.rapp_status !== undefined) {
      resolved.rapp_status = msg.rapp_status;
    }
    else {
      resolved.rapp_status = ''
    }

    if (msg.rapp !== undefined) {
      resolved.rapp = Rapp.Resolve(msg.rapp)
    }
    else {
      resolved.rapp = new Rapp()
    }

    if (msg.published_interfaces !== undefined) {
      resolved.published_interfaces = new Array(msg.published_interfaces.length);
      for (let i = 0; i < resolved.published_interfaces.length; ++i) {
        resolved.published_interfaces[i] = PublishedInterface.Resolve(msg.published_interfaces[i]);
      }
    }
    else {
      resolved.published_interfaces = []
    }

    if (msg.published_parameters !== undefined) {
      resolved.published_parameters = new Array(msg.published_parameters.length);
      for (let i = 0; i < resolved.published_parameters.length; ++i) {
        resolved.published_parameters[i] = rocon_std_msgs.msg.KeyValue.Resolve(msg.published_parameters[i]);
      }
    }
    else {
      resolved.published_parameters = []
    }

    return resolved;
    }
};

// Constants for message
Status.Constants = {
  RAPP_STOPPED: 'stopped',
  RAPP_RUNNING: 'running',
}

module.exports = Status;
