# This message indicates the requests from the HMI

# Defined modes:
uint8 HMI_REQ_MANUAL = 0
uint8 HMI_REQ_STOP_AND_PARK = 1
uint8 HMI_REQ_FIND_PARKING = 2
uint8 HMI_REQ_DRIVE_ROUTE = 3
uint8 HMI_REQ_DRIVE_PLATOONING = 4
uint8 HMI_REQ_SIMULATE_FAIL_STACK = 101
uint8 HMI_REQ_FORCE_EMERGENCY_NAV = 102
uint8 HMI_REQ_FORCE_EMERGENCY_PULLOVER = 103
uint8 HMI_REQ_INVALID = 126
uint8 HMI_REQ_NONE = 127

# Message definition
Header header
uint8 request

