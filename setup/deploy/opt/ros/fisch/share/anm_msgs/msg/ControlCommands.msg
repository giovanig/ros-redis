# This message defines all control commands required to control the vehicle

Header header

# Steering Wheel
float32 steering_pos_cmd # (rad)
float32 steering_vel_cmd # (rad/s)
uint8 steering_EN

# Throttle
float32 throttle_cmd # (percent) from 0.0 to 1.0
uint8 throttle_EN

# Brake
float32 brake_cmd # (Nm) torque from 0.0 to 3450.0
uint8 brake_EN

# Gear
dbw_mkz_msgs/Gear gear_cmd

# Turn signal
dbw_mkz_msgs/TurnSignal turn_signal_cmd
