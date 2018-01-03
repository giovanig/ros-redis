#!/usr/bin/env python

import sys, os, time
import subprocess, logging
import redis
import rospy
import rosnode

my_env = os.environ.copy()
my_env["ROS_MASTER_URI"] = "http://192.168.200.103:11311" 
my_env["ROS_IP"] = "192.168.200.100"

# path to directory of python file
dirname, filename = os.path.split(os.path.abspath(__file__))

logging.basicConfig(level=logging.DEBUG)
logger = logging.getLogger(__name__)

# create a file handler
handler = logging.FileHandler('periodic.log')
handler.setLevel(logging.DEBUG)

# create a logging format
formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
handler.setFormatter(formatter)

# add the handlers to the logger
logger.addHandler(handler)

if __name__ == '__main__':
    # give enough time for the node to be up and running before checking
    time.sleep(5)

    while True:
            proc = subprocess.Popen("rosnode list",
                shell=True,
                stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                env=my_env,
            )
            (stdoutdata, stderrdata) = proc.communicate()
            # print(stderrdata)
            
            if len(stderrdata.strip()) != 0:
                logger.warning("ERROR: Unable to communicate with master! - Exiting")
                sys.exit(1)
            else:
                rosnode_list = stdoutdata.split('\n')
                if "/rosout" in rosnode_list:
                    if "/rosmsg2redis_json" in rosnode_list:
                        logger.info("ROS node still active")
                        time.sleep(2)
                    else:
                        logger.warning("rosmsg2redis_json node not found in rosnode list")
                        sys.exit(1)