# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rocon_app_manager_msgs/ErrorCodes.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ErrorCodes(genpy.Message):
  _md5sum = "cec38b743e8d5698477f7be4d8bfebb8"
  _type = "rocon_app_manager_msgs/ErrorCodes"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# Error types for the rocon app manager

# General
int8 SUCCESS = 0
int8 UNKNOWN = 1

# Start
int8 MULTI_RAPP_NOT_SUPPORTED = 10

# Stop Rapp
int8 RAPP_IS_NOT_RUNNING = 20
int8 RAPP_IS_NOT_AVAILABLE = 21

# Invitations
int8 LOCAL_INVITATIONS_ONLY = 30
int8 NO_LOCAL_GATEWAY = 31
int8 ALREADY_REMOTE_CONTROLLED = 32
int8 NOT_CURRENT_REMOTE_CONTROLLER = 33
int8 INVITING_CONTROLLER_NOT_WHITELISTED = 34
int8 INVITING_CONTROLLER_BLACKLISTED = 35
int8 CLIENT_CONNECTION_DISRUPTED = 36"""
  # Pseudo-constants
  SUCCESS = 0
  UNKNOWN = 1
  MULTI_RAPP_NOT_SUPPORTED = 10
  RAPP_IS_NOT_RUNNING = 20
  RAPP_IS_NOT_AVAILABLE = 21
  LOCAL_INVITATIONS_ONLY = 30
  NO_LOCAL_GATEWAY = 31
  ALREADY_REMOTE_CONTROLLED = 32
  NOT_CURRENT_REMOTE_CONTROLLER = 33
  INVITING_CONTROLLER_NOT_WHITELISTED = 34
  INVITING_CONTROLLER_BLACKLISTED = 35
  CLIENT_CONNECTION_DISRUPTED = 36

  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ErrorCodes, self).__init__(*args, **kwds)

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
