# Object
# Tracking considered "nice to have," id field may or may not be supported.

# Unique ID of item for tracking purposes, or PD_OBJECT_ID_UNAVAILABLE if tracking is disabled
uint32 id

# What was found
rea_perception_msgs/rea_perception_object_classification classification

# Bounding box of the object with pose estimation
rea_perception_msgs/rea_perception_2dbox bbox_2d

# Bounding box of the object with pose estimation
# VALUE NOT AVAILABLE FOR CES 2018
rea_perception_msgs/rea_perception_3dbox bbox_3d

# Velocity of object
# VALUE NOT AVAILABLE FOR CES 2018
rea_perception_msgs/rea_perception_velocity velocity
