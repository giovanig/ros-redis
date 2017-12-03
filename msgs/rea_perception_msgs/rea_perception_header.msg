# This is sent as a part of every message to indicate basic information about
# the sensor along with the time of the sample

# ID of sensor
uint32 id

# Location of sensor w.r.t. center of rear axle of the car
rea_perception_msgs/rea_perception_xyz location

# Rotation of sensor w.r.t. center of sensor
rea_perception_msgs/rea_perception_rotation rotation

# ms from epoch
uint32 ts
