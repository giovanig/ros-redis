Header header

uint8 SATISFIED = 0
uint8 VIOLATED = 1
uint8 UPCOMING_VIOLATION = 2

# The feedback code
uint8 feedback

# The time remaining until violation
float32 time_to_violation

# The element which the feedback is for
anm_msgs/RODElement element
