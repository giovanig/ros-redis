# Auto-launch nodes on Startup

**Install the ROS lib**

    sudo apt-get install ros-kinetic-robot-upstart -y

**Prerequisites**

Package needs to be build first.

**Install Job**

    rosrun robot_upstart install --job fischRedis --master http://192.168.200.101:11311 redis_daq/launch/redis_listen.launch
    sudo systemctl daemon-reload && sudo systemctl start fischRedis

**Check status**

    systemctl status fischRedis.service

**Start/Stop/Restart Service**

    sudo systemctl restart fischRedis.service
    sudo systemctl start fischRedis.service
    sudo systemctl stop fischRedis.service
    
**Enable/Disable Service**

    sudo systemctl enable fischRedis.service
    sudo systemctl disable fischRedis.service

**Service stored at**

    /lib/systemd/system/fischRedis.service

**Auto restart on failure**

### https://jonarcher.info/2015/08/ensure-systemd-services-restart-on-failure/

    sudo vim /lib/systemd/system/fischRedis.service

Under the [Service] section in the file i added the following 2 lines:
```
Restart=always
RestartSec=3
```

    sudo systemctl daemon-reload
    sudo systemctl restart fischRedis.service

**Check if process is running**

    ps -ef|grep fischRedis

**Check if ROS is publishing data**

    source ~/waterloo/renesas-demo/scripts/set_h3_ros_master.bash
    rostopic list
    rostopic echo /control_commands

**References**

usage: install [-h] [--job JOB] [--interface ethN] [--user NAME]
               [--setup path/to/setup.bash] [--rosdistro DISTRO]
               [--master http://MASTER:11311] [--logdir path/to/logs]
               [--augment] [--provider [upstart|systemd]] [--symlink]
               pkg/path [pkg/path ...]

Positional arguments:
pkgpath	Package and path to install job launch files from. Make sure the path starts with the package name (e.g. don’t pass absolute path nor a path starting from workspace top folder etc.)

Options:
--job	Specify job name. If unspecified, will be constructed from package name.
--interface	Specify network interface name to associate job with.
--user	Specify user to launch job as.
--setup	Specify workspace setup file for the job launch context.
--rosdistro	Specify ROS distro this is for.
--master	Specify an alternative ROS_MASTER_URI for the job launch context.
--logdir	Specify an a value for ROS_LOG_DIR in the job launch context.
--augment=False
 	Bypass creating the job, and only copy user files. Assumes the job was previously created.
--provider	Specify provider if the autodetect fails to identify the correct provider
--symlink=False
 	Create symbolic link to job launch files instead of copying them.

**Links**

http://docs.ros.org/jade/api/robot_upstart/html/index.html

http://docs.ros.org/jade/api/robot_upstart/html/install.html

http://docs.ros.org/jade/api/robot_upstart/html/uninstall.html