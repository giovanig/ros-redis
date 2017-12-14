# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from anm_msgs/BehaviouralAttributes.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import nav_msgs.msg
import std_msgs.msg

class BehaviouralAttributes(genpy.Message):
  _md5sum = "f25317166506ec5eda1d82c7f612bedf"
  _type = "anm_msgs/BehaviouralAttributes"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """# This message describes all necessary communication between the behavior and local planner

Header header

# The following constants are used to define the current maneuver being executed 
uint8 TRACK_SPEED = 0  			# Track the target speed as defined by target_velocity
uint8 DECELERATE_TO_STOP = 1		# Decelerate to a stopping point as defined by stop_location
uint8 STOP = 2  			# Stay stopped in its current location
uint8 PARKED_VEHICLE_AVOID = 3		# Avoid an upcoming parked vehicle by relaxing the left_boundary constraint
uint8 LEAD_VEHICLE_FOLLOW = 4      	# Follow a lead vehicle as defined by its lead_vehicle_id

uint8 maneuver				# Identifies the maneuver to be executed
nav_msgs/Path left_boundary		# Left lane boundary constraint
nav_msgs/Path right_boundary		# Right lane boundary constraint
nav_msgs/Path center_line		# Center of the lane path (global path) that should be follow
geometry_msgs/Point stop_location	# A point at which the car should stop by
float64 target_velocity			# The velocity which the car should attempt to maintain
uint32 lead_vehicle_id			# The ID of the vehicle that should be followed

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
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  # Pseudo-constants
  TRACK_SPEED = 0
  DECELERATE_TO_STOP = 1
  STOP = 2
  PARKED_VEHICLE_AVOID = 3
  LEAD_VEHICLE_FOLLOW = 4

  __slots__ = ['header','maneuver','left_boundary','right_boundary','center_line','stop_location','target_velocity','lead_vehicle_id']
  _slot_types = ['std_msgs/Header','uint8','nav_msgs/Path','nav_msgs/Path','nav_msgs/Path','geometry_msgs/Point','float64','uint32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,maneuver,left_boundary,right_boundary,center_line,stop_location,target_velocity,lead_vehicle_id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BehaviouralAttributes, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.maneuver is None:
        self.maneuver = 0
      if self.left_boundary is None:
        self.left_boundary = nav_msgs.msg.Path()
      if self.right_boundary is None:
        self.right_boundary = nav_msgs.msg.Path()
      if self.center_line is None:
        self.center_line = nav_msgs.msg.Path()
      if self.stop_location is None:
        self.stop_location = geometry_msgs.msg.Point()
      if self.target_velocity is None:
        self.target_velocity = 0.
      if self.lead_vehicle_id is None:
        self.lead_vehicle_id = 0
    else:
      self.header = std_msgs.msg.Header()
      self.maneuver = 0
      self.left_boundary = nav_msgs.msg.Path()
      self.right_boundary = nav_msgs.msg.Path()
      self.center_line = nav_msgs.msg.Path()
      self.stop_location = geometry_msgs.msg.Point()
      self.target_velocity = 0.
      self.lead_vehicle_id = 0

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
      buff.write(_get_struct_B3I().pack(_x.maneuver, _x.left_boundary.header.seq, _x.left_boundary.header.stamp.secs, _x.left_boundary.header.stamp.nsecs))
      _x = self.left_boundary.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.left_boundary.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.left_boundary.poses:
        _v1 = val1.header
        buff.write(_get_struct_I().pack(_v1.seq))
        _v2 = _v1.stamp
        _x = _v2
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v3 = val1.pose
        _v4 = _v3.position
        _x = _v4
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v5 = _v3.orientation
        _x = _v5
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
      _x = self
      buff.write(_get_struct_3I().pack(_x.right_boundary.header.seq, _x.right_boundary.header.stamp.secs, _x.right_boundary.header.stamp.nsecs))
      _x = self.right_boundary.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.right_boundary.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.right_boundary.poses:
        _v6 = val1.header
        buff.write(_get_struct_I().pack(_v6.seq))
        _v7 = _v6.stamp
        _x = _v7
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v6.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v8 = val1.pose
        _v9 = _v8.position
        _x = _v9
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v10 = _v8.orientation
        _x = _v10
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
      _x = self
      buff.write(_get_struct_3I().pack(_x.center_line.header.seq, _x.center_line.header.stamp.secs, _x.center_line.header.stamp.nsecs))
      _x = self.center_line.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.center_line.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.center_line.poses:
        _v11 = val1.header
        buff.write(_get_struct_I().pack(_v11.seq))
        _v12 = _v11.stamp
        _x = _v12
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v11.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v13 = val1.pose
        _v14 = _v13.position
        _x = _v14
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v15 = _v13.orientation
        _x = _v15
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
      _x = self
      buff.write(_get_struct_4dI().pack(_x.stop_location.x, _x.stop_location.y, _x.stop_location.z, _x.target_velocity, _x.lead_vehicle_id))
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
      if self.left_boundary is None:
        self.left_boundary = nav_msgs.msg.Path()
      if self.right_boundary is None:
        self.right_boundary = nav_msgs.msg.Path()
      if self.center_line is None:
        self.center_line = nav_msgs.msg.Path()
      if self.stop_location is None:
        self.stop_location = geometry_msgs.msg.Point()
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
      end += 13
      (_x.maneuver, _x.left_boundary.header.seq, _x.left_boundary.header.stamp.secs, _x.left_boundary.header.stamp.nsecs,) = _get_struct_B3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.left_boundary.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.left_boundary.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.left_boundary.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.PoseStamped()
        _v16 = val1.header
        start = end
        end += 4
        (_v16.seq,) = _get_struct_I().unpack(str[start:end])
        _v17 = _v16.stamp
        _x = _v17
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v16.frame_id = str[start:end].decode('utf-8')
        else:
          _v16.frame_id = str[start:end]
        _v18 = val1.pose
        _v19 = _v18.position
        _x = _v19
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v20 = _v18.orientation
        _x = _v20
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.left_boundary.poses.append(val1)
      _x = self
      start = end
      end += 12
      (_x.right_boundary.header.seq, _x.right_boundary.header.stamp.secs, _x.right_boundary.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.right_boundary.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.right_boundary.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.right_boundary.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.PoseStamped()
        _v21 = val1.header
        start = end
        end += 4
        (_v21.seq,) = _get_struct_I().unpack(str[start:end])
        _v22 = _v21.stamp
        _x = _v22
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v21.frame_id = str[start:end].decode('utf-8')
        else:
          _v21.frame_id = str[start:end]
        _v23 = val1.pose
        _v24 = _v23.position
        _x = _v24
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v25 = _v23.orientation
        _x = _v25
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.right_boundary.poses.append(val1)
      _x = self
      start = end
      end += 12
      (_x.center_line.header.seq, _x.center_line.header.stamp.secs, _x.center_line.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.center_line.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.center_line.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.center_line.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.PoseStamped()
        _v26 = val1.header
        start = end
        end += 4
        (_v26.seq,) = _get_struct_I().unpack(str[start:end])
        _v27 = _v26.stamp
        _x = _v27
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v26.frame_id = str[start:end].decode('utf-8')
        else:
          _v26.frame_id = str[start:end]
        _v28 = val1.pose
        _v29 = _v28.position
        _x = _v29
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v30 = _v28.orientation
        _x = _v30
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.center_line.poses.append(val1)
      _x = self
      start = end
      end += 36
      (_x.stop_location.x, _x.stop_location.y, _x.stop_location.z, _x.target_velocity, _x.lead_vehicle_id,) = _get_struct_4dI().unpack(str[start:end])
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
      buff.write(_get_struct_B3I().pack(_x.maneuver, _x.left_boundary.header.seq, _x.left_boundary.header.stamp.secs, _x.left_boundary.header.stamp.nsecs))
      _x = self.left_boundary.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.left_boundary.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.left_boundary.poses:
        _v31 = val1.header
        buff.write(_get_struct_I().pack(_v31.seq))
        _v32 = _v31.stamp
        _x = _v32
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v31.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v33 = val1.pose
        _v34 = _v33.position
        _x = _v34
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v35 = _v33.orientation
        _x = _v35
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
      _x = self
      buff.write(_get_struct_3I().pack(_x.right_boundary.header.seq, _x.right_boundary.header.stamp.secs, _x.right_boundary.header.stamp.nsecs))
      _x = self.right_boundary.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.right_boundary.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.right_boundary.poses:
        _v36 = val1.header
        buff.write(_get_struct_I().pack(_v36.seq))
        _v37 = _v36.stamp
        _x = _v37
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v36.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v38 = val1.pose
        _v39 = _v38.position
        _x = _v39
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v40 = _v38.orientation
        _x = _v40
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
      _x = self
      buff.write(_get_struct_3I().pack(_x.center_line.header.seq, _x.center_line.header.stamp.secs, _x.center_line.header.stamp.nsecs))
      _x = self.center_line.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.center_line.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.center_line.poses:
        _v41 = val1.header
        buff.write(_get_struct_I().pack(_v41.seq))
        _v42 = _v41.stamp
        _x = _v42
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v41.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v43 = val1.pose
        _v44 = _v43.position
        _x = _v44
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v45 = _v43.orientation
        _x = _v45
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
      _x = self
      buff.write(_get_struct_4dI().pack(_x.stop_location.x, _x.stop_location.y, _x.stop_location.z, _x.target_velocity, _x.lead_vehicle_id))
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
      if self.left_boundary is None:
        self.left_boundary = nav_msgs.msg.Path()
      if self.right_boundary is None:
        self.right_boundary = nav_msgs.msg.Path()
      if self.center_line is None:
        self.center_line = nav_msgs.msg.Path()
      if self.stop_location is None:
        self.stop_location = geometry_msgs.msg.Point()
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
      end += 13
      (_x.maneuver, _x.left_boundary.header.seq, _x.left_boundary.header.stamp.secs, _x.left_boundary.header.stamp.nsecs,) = _get_struct_B3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.left_boundary.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.left_boundary.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.left_boundary.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.PoseStamped()
        _v46 = val1.header
        start = end
        end += 4
        (_v46.seq,) = _get_struct_I().unpack(str[start:end])
        _v47 = _v46.stamp
        _x = _v47
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v46.frame_id = str[start:end].decode('utf-8')
        else:
          _v46.frame_id = str[start:end]
        _v48 = val1.pose
        _v49 = _v48.position
        _x = _v49
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v50 = _v48.orientation
        _x = _v50
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.left_boundary.poses.append(val1)
      _x = self
      start = end
      end += 12
      (_x.right_boundary.header.seq, _x.right_boundary.header.stamp.secs, _x.right_boundary.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.right_boundary.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.right_boundary.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.right_boundary.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.PoseStamped()
        _v51 = val1.header
        start = end
        end += 4
        (_v51.seq,) = _get_struct_I().unpack(str[start:end])
        _v52 = _v51.stamp
        _x = _v52
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v51.frame_id = str[start:end].decode('utf-8')
        else:
          _v51.frame_id = str[start:end]
        _v53 = val1.pose
        _v54 = _v53.position
        _x = _v54
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v55 = _v53.orientation
        _x = _v55
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.right_boundary.poses.append(val1)
      _x = self
      start = end
      end += 12
      (_x.center_line.header.seq, _x.center_line.header.stamp.secs, _x.center_line.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.center_line.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.center_line.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.center_line.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.PoseStamped()
        _v56 = val1.header
        start = end
        end += 4
        (_v56.seq,) = _get_struct_I().unpack(str[start:end])
        _v57 = _v56.stamp
        _x = _v57
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v56.frame_id = str[start:end].decode('utf-8')
        else:
          _v56.frame_id = str[start:end]
        _v58 = val1.pose
        _v59 = _v58.position
        _x = _v59
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v60 = _v58.orientation
        _x = _v60
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.center_line.poses.append(val1)
      _x = self
      start = end
      end += 36
      (_x.stop_location.x, _x.stop_location.y, _x.stop_location.z, _x.target_velocity, _x.lead_vehicle_id,) = _get_struct_4dI().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4dI = None
def _get_struct_4dI():
    global _struct_4dI
    if _struct_4dI is None:
        _struct_4dI = struct.Struct("<4dI")
    return _struct_4dI
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_B3I = None
def _get_struct_B3I():
    global _struct_B3I
    if _struct_B3I is None:
        _struct_B3I = struct.Struct("<B3I")
    return _struct_B3I
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d