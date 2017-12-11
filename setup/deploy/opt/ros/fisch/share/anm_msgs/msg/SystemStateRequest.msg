# This message indicates the requests for the system supervisor

# Other requests:
uint8 SYS_REQ_SIMULATE_FAIL_STACK = 101
uint8 SYS_REQ_NONE = 127

# Message definition
Header header
bool state_request          # request for a state change or something else
SystemState new_state       # new state request (if state_request = true)
uint8 other_request         # other request (if state request = false)
