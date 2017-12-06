# This message contains the reported status/health of the publishing nodelet
#
# The status modes are:
#  * Failed
#  * Inactive
#  * Active

# The following constants are used to define the status
uint8 FAILED = 0
uint8 INACTIVE = 1
uint8 ACTIVE = 2

# Message data
Header header
uint8 node_status       # Status of node
string node_name        # Name of reporting node
