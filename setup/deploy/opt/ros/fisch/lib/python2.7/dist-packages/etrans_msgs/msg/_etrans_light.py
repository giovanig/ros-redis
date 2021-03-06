# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from etrans_msgs/etrans_light.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class etrans_light(genpy.Message):
  _md5sum = "c32da18cf5c5b5fc7fb74eb7e7860ee2"
  _type = "etrans_msgs/etrans_light"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int8 state
uint32 signal_group
float64 time_to_change
float64 latitude
float64 longitude
"""
  __slots__ = ['state','signal_group','time_to_change','latitude','longitude']
  _slot_types = ['int8','uint32','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       state,signal_group,time_to_change,latitude,longitude

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(etrans_light, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.state is None:
        self.state = 0
      if self.signal_group is None:
        self.signal_group = 0
      if self.time_to_change is None:
        self.time_to_change = 0.
      if self.latitude is None:
        self.latitude = 0.
      if self.longitude is None:
        self.longitude = 0.
    else:
      self.state = 0
      self.signal_group = 0
      self.time_to_change = 0.
      self.latitude = 0.
      self.longitude = 0.

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
      _x = self
      buff.write(_get_struct_bI3d().pack(_x.state, _x.signal_group, _x.time_to_change, _x.latitude, _x.longitude))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 29
      (_x.state, _x.signal_group, _x.time_to_change, _x.latitude, _x.longitude,) = _get_struct_bI3d().unpack(str[start:end])
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
      _x = self
      buff.write(_get_struct_bI3d().pack(_x.state, _x.signal_group, _x.time_to_change, _x.latitude, _x.longitude))
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
      _x = self
      start = end
      end += 29
      (_x.state, _x.signal_group, _x.time_to_change, _x.latitude, _x.longitude,) = _get_struct_bI3d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_bI3d = None
def _get_struct_bI3d():
    global _struct_bI3d
    if _struct_bI3d is None:
        _struct_bI3d = struct.Struct("<bI3d")
    return _struct_bI3d
