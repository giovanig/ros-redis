# This message describes the complete vehicle state
# orientation = orientation of the vehicle using euler angles

Header header
string child_frame_id

geometry_msgs/Point position # (m)
geometry_msgs/Vector3 orientation # (rad)
geometry_msgs/Twist velocity # (m/s) & (rad/s)
geometry_msgs/Twist acceleration # (m/s^2) & (rad/s^2)
