# 2-D Bounding Box

# Bottom left corner of bounding box nearest to camera
rea_perception_msgs/rea_perception_yz bottom_left

# Top right corner of bounding box nearest to camera
rea_perception_msgs/rea_perception_yz top_right

# Distance in mm from camera
int32 distance

# Yaw in radians w.r.t. center of object
# VALUE NOT AVAILABLE FOR CES 2018
int32 yaw

# How confident we are of the object existing in this box
# VALUE NOT AVAILABLE FOR CES 2018
uint32 confidence
