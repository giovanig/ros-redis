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

hostname = 'localhost'
port = 20223
password = ''
db_file = 'redis_skyline_test.cvs'
f = open(db_file, 'w')

# Make connection to redis database
con = redis.StrictRedis(
    host=hostname,
    port=port,
    db=0)

pubsub = con.pubsub()

def redis_subscriber():
    print "Subscribing to _control_commands in Redis host: ",hostname + " port:", port

    #Redis subscribes to '_control_commands' and '_navsat_fix'
    pubsub.subscribe(['_control_commands', '_navsat_fix'])
    for item in pubsub.listen():
        if item['type'] == 'message': #item['channel'] ==  '_control_commands'
            print '%s : %s' % (item['channel'], item['data'])
            f.write(item['channel'] + "," + item['data'] + "\n")


if __name__ == '__main__':
    run_event = threading.Event()
    run_event.set()
    t = threading.Thread(name='redis_subscriber', target=redis_subscriber)
    t.daemon = True
    t.start()
    try:
        while 1:
            time.sleep(.1)
    except KeyboardInterrupt:
        print "attempting to close thread."
        pubsub.unsubscribe()
        f.close()
        t.join()
        print "threads successfully closed"
