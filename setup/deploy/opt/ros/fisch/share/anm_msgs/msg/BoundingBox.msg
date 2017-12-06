# This messages defines a set of labeled 2d bounding boxes
#
# Bounding box coordinates are encoded using OpenCV format, where
# (x1, y1) represents the left upper corner and (x2, y2) represents
# the bottom right corner. The numeric value denotes the pixel coordinate
# relative to the origin which is the upper left corner of the image.

Header header

uint32 total

uint32 image_width
uint32 image_height

uint16[] x1
uint16[] y1
uint16[] x2
uint16[] y2
float32[] score
uint16[] labels

