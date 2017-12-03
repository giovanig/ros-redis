# Line curvature
# y = ax^2 + bx + c
# y and x are in mm

# a parameter, resolution = 2^-14
int32 a

# b parameter, resolution = 2^-14
int32 b

# c parameter, resolution = 2^-14
int32 c

# Start of line segment
rea_perception_msgs/rea_perception_xy start

# End of line segment
rea_perception_msgs/rea_perception_xy end

# Confidence that this is really a line
# VALUE NOT AVAILABLE FOR CES 2018
uint32 confidence
