# This messages defines a set of labeled 2d bounding boxes
#
# Bounding box coordinates are encoded using Kitti format, where (x,y,z)
# represents the centroid, ry represents rotation around the y-axis in radians,
# and (h,w,l) represent the height, width, length of the bounding box.
#
# All units but ry are in metres
#
# Note that the ground plane is represented using the x,z axis

Header header

uint32 total

float32[] x
float32[] y
float32[] z
float32[] h
float32[] w
float32[] l
float32[] ry
float32[] score
uint16[] labels

