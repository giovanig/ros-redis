#!/usr/bin/env python

import sys, os, time
import redis


hostname = 'localhost'
port = 6379
password = ''

# Make connection to redis database
con = redis.StrictRedis(
    host=hostname,
    port=port,
    db=0)

def viw_database():
    
    steering_pos_cmd = con.lrange('steering_pos_cmd', 0, -1)
    steering_vel_cmd = con.lrange('steering_vel_cmd', 0, -1)
    steering_EN = con.lrange('steering_EN', 0, -1)
    throttle_cmd = con.lrange('throttle_cmd', 0, -1)
    throttle_EN = con.lrange('throttle_EN', 0, -1)
    brake_cmd = con.lrange('brake_cmd', 0, -1)
    brake_EN = con.lrange('brake_EN', 0, -1)
    gear_cmd = con.lrange('gear_cmd', 0, -1)
    turn_signal_cmd = con.lrange('turn_signal_cmd', 0, -1)

    steering_pos_cmd_len = con.llen('gear_cmd')

    # print(steering_pos_cmd)
    print(steering_pos_cmd_len)


if __name__ == '__main__':
    viw_database()
