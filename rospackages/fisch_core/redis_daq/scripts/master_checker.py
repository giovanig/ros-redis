#!/usr/bin/env python

import sys, os, time
import subprocess
import redis
import rospy
import rosnode

my_env = os.environ.copy()
my_env["ROS_MASTER_URI"] = "http://192.168.200.101:11311" 
my_env["ROS_IP"] = "192.168.200.100"

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
                print("ERROR: Unable to communicate with master! - Exiting")
                sys.exit(1)
            else:
                rosnode_list = stdoutdata.split('\n')
                if "/rosout" in rosnode_list:
                    if "/rosmsg2redis_json" in rosnode_list:
                        # print("No errors")
                        time.sleep(2)
                    else:
                        print("rosmsg2redis_json node not found in rosnode list")
                        sys.exit(1)