# This messages defines a set of tracked 3d bounding boxes
#
# 3D Bounding box coordinates are encoded using Kitti format (in camera frame), where (x,y,z)
# represents the centroid, ry represents rotation around the y-axis in radians,
# and (h,w,l) represent the height, width, length of the bounding box.
#
# All units but ry are in metres
#
# Note that the ground plane is represented using the x,z axis
#
# labels for classes classes = ['Car', 'Van', 'Truck', 'Pedestrian', 'Person_sitting', 'Cyclist', 'Tram', 'Misc']
#
#
#

Header header

uint32 id
uint16 labels

# bounding box
geometry_msgs/Vector3 center
float32 h
float32 w
float32 l
float32 ry
float32 score

# speed 
geometry_msgs/Vector3 velocity

# status
bool occluded

# historied center
geometry_msgs/Vector3[] historied_center

# historied speed
geometry_msgs/Vector3[] historied_velocity

# historied occlusion status
bool[] historied_occluded



