# Parking space perimeter
# Outlines the perimeter of the parking space by using 4 points.
#
# Line segments between the following shall be considered uncrossable boundaries
# - point[0] - point[1]
# - point[1] - point[2]
# - point[2] - point[3]
# May enter/exit between point[0] and point[3]

# x,y coordinates of the 4 points of the parking space. Enter between [0] and [3]
rea_perception_msgs/rea_perception_xy[4] point

# Confidence that this is a parking space
# VALUE NOT AVAILABLE FOR CES 2018
uint32 confidence
