# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from anm_msgs/ControlCommands.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import dbw_mkz_msgs.msg
import std_msgs.msg

class ControlCommands(genpy.Message):
  _md5sum = "d0e12956f02b3e297a2b3e14ba7b4c6b"
  _type = "anm_msgs/ControlCommands"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """# This message defines all control commands required to control the vehicle

Header header

# Steering Wheel
float32 steering_pos_cmd # (rad)
float32 steering_vel_cmd # (rad/s)
uint8 steering_EN

# Throttle
float32 throttle_cmd # (percent) from 0.0 to 1.0
uint8 throttle_EN

# Brake
float32 brake_cmd # (Nm) torque from 0.0 to 3450.0
uint8 brake_EN

# Gear
dbw_mkz_msgs/Gear gear_cmd

# Turn signal
dbw_mkz_msgs/TurnSignal turn_signal_cmd

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
MSG: dbw_mkz_msgs/Gear
uint8 gear

uint8 NONE=0
uint8 PARK=1
uint8 REVERSE=2
uint8 NEUTRAL=3
uint8 DRIVE=4
uint8 LOW=5

================================================================================
MSG: dbw_mkz_msgs/TurnSignal
uint8 value

uint8 NONE=0
uint8 LEFT=1
uint8 RIGHT=2
"""
  __slots__ = ['header','steering_pos_cmd','steering_vel_cmd','steering_EN','throttle_cmd','throttle_EN','brake_cmd','brake_EN','gear_cmd','turn_signal_cmd']
  _slot_types = ['std_msgs/Header','float32','float32','uint8','float32','uint8','float32','uint8','dbw_mkz_msgs/Gear','dbw_mkz_msgs/TurnSignal']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,steering_pos_cmd,steering_vel_cmd,steering_EN,throttle_cmd,throttle_EN,brake_cmd,brake_EN,gear_cmd,turn_signal_cmd

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ControlCommands, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.steering_pos_cmd is None:
        self.steering_pos_cmd = 0.
      if self.steering_vel_cmd is None:
        self.steering_vel_cmd = 0.
      if self.steering_EN is None:
        self.steering_EN = 0
      if self.throttle_cmd is None:
        self.throttle_cmd = 0.
      if self.throttle_EN is None:
        self.throttle_EN = 0
      if self.brake_cmd is None:
        self.brake_cmd = 0.
      if self.brake_EN is None:
        self.brake_EN = 0
      if self.gear_cmd is None:
        self.gear_cmd = dbw_mkz_msgs.msg.Gear()
      if self.turn_signal_cmd is None:
        self.turn_signal_cmd = dbw_mkz_msgs.msg.TurnSignal()
    else:
      self.header = std_msgs.msg.Header()
      self.steering_pos_cmd = 0.
      self.steering_vel_cmd = 0.
      self.steering_EN = 0
      self.throttle_cmd = 0.
      self.throttle_EN = 0
      self.brake_cmd = 0.
      self.brake_EN = 0
      self.gear_cmd = dbw_mkz_msgs.msg.Gear()
      self.turn_signal_cmd = dbw_mkz_msgs.msg.TurnSignal()

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
      _x = self
      buff.write(_get_struct_2fBfBf3B().pack(_x.steering_pos_cmd, _x.steering_vel_cmd, _x.steering_EN, _x.throttle_cmd, _x.throttle_EN, _x.brake_cmd, _x.brake_EN, _x.gear_cmd.gear, _x.turn_signal_cmd.value))
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
      if self.gear_cmd is None:
        self.gear_cmd = dbw_mkz_msgs.msg.Gear()
      if self.turn_signal_cmd is None:
        self.turn_signal_cmd = dbw_mkz_msgs.msg.TurnSignal()
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
      _x = self
      start = end
      end += 21
      (_x.steering_pos_cmd, _x.steering_vel_cmd, _x.steering_EN, _x.throttle_cmd, _x.throttle_EN, _x.brake_cmd, _x.brake_EN, _x.gear_cmd.gear, _x.turn_signal_cmd.value,) = _get_struct_2fBfBf3B().unpack(str[start:end])
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
      _x = self
      buff.write(_get_struct_2fBfBf3B().pack(_x.steering_pos_cmd, _x.steering_vel_cmd, _x.steering_EN, _x.throttle_cmd, _x.throttle_EN, _x.brake_cmd, _x.brake_EN, _x.gear_cmd.gear, _x.turn_signal_cmd.value))
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
      if self.gear_cmd is None:
        self.gear_cmd = dbw_mkz_msgs.msg.Gear()
      if self.turn_signal_cmd is None:
        self.turn_signal_cmd = dbw_mkz_msgs.msg.TurnSignal()
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
      _x = self
      start = end
      end += 21
      (_x.steering_pos_cmd, _x.steering_vel_cmd, _x.steering_EN, _x.throttle_cmd, _x.throttle_EN, _x.brake_cmd, _x.brake_EN, _x.gear_cmd.gear, _x.turn_signal_cmd.value,) = _get_struct_2fBfBf3B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_2fBfBf3B = None
def _get_struct_2fBfBf3B():
    global _struct_2fBfBf3B
    if _struct_2fBfBf3B is None:
        _struct_2fBfBf3B = struct.Struct("<2fBfBf3B")
    return _struct_2fBfBf3B
