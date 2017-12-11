# This message describes all necessary communication between the behavior and local planner

Header header

# The following constants are used to define the current maneuver being executed 
uint8 TRACK_SPEED = 0  			# Track the target speed as defined by target_velocity
uint8 DECELERATE_TO_STOP = 1		# Decelerate to a stopping point as defined by stop_location
uint8 STOP = 2  			# Stay stopped in its current location
uint8 PARKED_VEHICLE_AVOID = 3		# Avoid an upcoming parked vehicle by relaxing the left_boundary constraint
uint8 LEAD_VEHICLE_FOLLOW = 4      	# Follow a lead vehicle as defined by its lead_vehicle_id

uint8 maneuver				# Identifies the maneuver to be executed
nav_msgs/Path left_boundary		# Left lane boundary constraint
nav_msgs/Path right_boundary		# Right lane boundary constraint
nav_msgs/Path center_line		# Center of the lane path (global path) that should be follow
geometry_msgs/Point stop_location	# A point at which the car should stop by
float64 target_velocity			# The velocity which the car should attempt to maintain
uint32 lead_vehicle_id			# The ID of the vehicle that should be followed
