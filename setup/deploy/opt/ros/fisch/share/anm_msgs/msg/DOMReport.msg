# The DOMReport is used to inform the supervisory layer of the current DOM
# (Degraded Operation Mode) of a given subsystem.

Header header

# Name of the subsystem/module
string subsystem_name

# Degraded operation mode. 0 = no degradation, 1 = fully degraded or failed
float32 dom
