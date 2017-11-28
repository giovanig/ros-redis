#!/usr/bin/env python


# https://pypi.python.org/pypi/redis
# https://gist.github.com/jobliz/2596594
# https://redis-py.readthedocs.io/en/latest/
# https://gist.github.com/sunboy-2050/9543963

import sys, os, time
import redis
import threading
import csv
import time

sleep_time = 600 #period (in seconds) of sleeping before trying to reconnect to redis
hostname = 'localhost' #redis hostname
port = 20223 #redis port
#port = 6379
password = '' #redis password

def redis_subscriber():
    #print "#Start : %s" % time.ctime()

    # Make connection to redis database
    while True:
        con = redis.StrictRedis(host=hostname, port=port, db=0)
        try:
            con.get(None)  # getting None returns None or throws an exception
            break
        except (redis.exceptions.ConnectionError, redis.exceptions.BusyLoadingError):
            time.sleep(sleep_time)
            
    pubsub = con.pubsub()

    #Redis subscribes
    pubsub.subscribe(['_control_commands', '_navsat_fix', '_vehicle_throttle_report', '_vehicle_steering_report', '_vehicle_break_report','_vehicle_gear_report','_vehicle_state_report'])
    for item in pubsub.listen():
        if item['type'] == 'message': #item['channel'] ==  '_control_commands'
            print '%s : %s' % (item['channel'], item['data'].replace('\n', ' '))


if __name__ == '__main__':
    redis_subscriber()
