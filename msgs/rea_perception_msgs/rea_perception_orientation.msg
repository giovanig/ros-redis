# Orientation of car w.r.t. single line

# Distance in millimeters from camera to line
int32 distance

# Rotation of car in radians w.r.t. the detected line. pi/2 (90 degrees left) to -pi/2 (90 degrees right) or NaN if unavailable
int32 yaw

# How sure we are of this measurement (line quality indicator)
# VALUE NOT AVAILABLE FOR CES 2018
uint32 confidence
