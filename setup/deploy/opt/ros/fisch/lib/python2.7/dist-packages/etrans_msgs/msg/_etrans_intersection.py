# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from etrans_msgs/etrans_intersection.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import etrans_msgs.msg
import std_msgs.msg

class etrans_intersection(genpy.Message):
  _md5sum = "0c97a642a195257607a5e8b421317b71"
  _type = "etrans_msgs/etrans_intersection"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header
uint32 ID
etrans_msgs/etrans_light[] lights
etrans_msgs/etrans_lane[] lanes
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: etrans_msgs/etrans_light
int8 state
uint32 signal_group
float64 time_to_change
float64 latitude
float64 longitude

================================================================================
MSG: etrans_msgs/etrans_lane
uint32 ID
etrans_msgs/etrans_latlon[] centerpoints
================================================================================
MSG: etrans_msgs/etrans_latlon
float64 latitude
float64 longitude"""
  __slots__ = ['header','ID','lights','lanes']
  _slot_types = ['std_msgs/Header','uint32','etrans_msgs/etrans_light[]','etrans_msgs/etrans_lane[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,ID,lights,lanes

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(etrans_intersection, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.ID is None:
        self.ID = 0
      if self.lights is None:
        self.lights = []
      if self.lanes is None:
        self.lanes = []
    else:
      self.header = std_msgs.msg.Header()
      self.ID = 0
      self.lights = []
      self.lanes = []

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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_I().pack(self.ID))
      length = len(self.lights)
      buff.write(_struct_I.pack(length))
      for val1 in self.lights:
        _x = val1
        buff.write(_get_struct_bI3d().pack(_x.state, _x.signal_group, _x.time_to_change, _x.latitude, _x.longitude))
      length = len(self.lanes)
      buff.write(_struct_I.pack(length))
      for val1 in self.lanes:
        buff.write(_get_struct_I().pack(val1.ID))
        length = len(val1.centerpoints)
        buff.write(_struct_I.pack(length))
        for val2 in val1.centerpoints:
          _x = val2
          buff.write(_get_struct_2d().pack(_x.latitude, _x.longitude))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.lights is None:
        self.lights = None
      if self.lanes is None:
        self.lanes = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (self.ID,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.lights = []
      for i in range(0, length):
        val1 = etrans_msgs.msg.etrans_light()
        _x = val1
        start = end
        end += 29
        (_x.state, _x.signal_group, _x.time_to_change, _x.latitude, _x.longitude,) = _get_struct_bI3d().unpack(str[start:end])
        self.lights.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.lanes = []
      for i in range(0, length):
        val1 = etrans_msgs.msg.etrans_lane()
        start = end
        end += 4
        (val1.ID,) = _get_struct_I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.centerpoints = []
        for i in range(0, length):
          val2 = etrans_msgs.msg.etrans_latlon()
          _x = val2
          start = end
          end += 16
          (_x.latitude, _x.longitude,) = _get_struct_2d().unpack(str[start:end])
          val1.centerpoints.append(val2)
        self.lanes.append(val1)
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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_I().pack(self.ID))
      length = len(self.lights)
      buff.write(_struct_I.pack(length))
      for val1 in self.lights:
        _x = val1
        buff.write(_get_struct_bI3d().pack(_x.state, _x.signal_group, _x.time_to_change, _x.latitude, _x.longitude))
      length = len(self.lanes)
      buff.write(_struct_I.pack(length))
      for val1 in self.lanes:
        buff.write(_get_struct_I().pack(val1.ID))
        length = len(val1.centerpoints)
        buff.write(_struct_I.pack(length))
        for val2 in val1.centerpoints:
          _x = val2
          buff.write(_get_struct_2d().pack(_x.latitude, _x.longitude))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.lights is None:
        self.lights = None
      if self.lanes is None:
        self.lanes = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (self.ID,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.lights = []
      for i in range(0, length):
        val1 = etrans_msgs.msg.etrans_light()
        _x = val1
        start = end
        end += 29
        (_x.state, _x.signal_group, _x.time_to_change, _x.latitude, _x.longitude,) = _get_struct_bI3d().unpack(str[start:end])
        self.lights.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.lanes = []
      for i in range(0, length):
        val1 = etrans_msgs.msg.etrans_lane()
        start = end
        end += 4
        (val1.ID,) = _get_struct_I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.centerpoints = []
        for i in range(0, length):
          val2 = etrans_msgs.msg.etrans_latlon()
          _x = val2
          start = end
          end += 16
          (_x.latitude, _x.longitude,) = _get_struct_2d().unpack(str[start:end])
          val1.centerpoints.append(val2)
        self.lanes.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2d = None
def _get_struct_2d():
    global _struct_2d
    if _struct_2d is None:
        _struct_2d = struct.Struct("<2d")
    return _struct_2d
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_bI3d = None
def _get_struct_bI3d():
    global _struct_bI3d
    if _struct_bI3d is None:
        _struct_bI3d = struct.Struct("<bI3d")
    return _struct_bI3d
