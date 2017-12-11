# Access redis from the PC in Waterloo

**ssh into the server at waterloo**

    ssh skyline@sf-pc15.esg.uwaterloo.ca -p 20222

**run the python script**

    python redis2csv.py

# Access redis while in the skyline PC

**ssh in the car PC from stratford**

    ssh dev@192.168.5.36

**connect to local redis server**

    redis-cli

    redis-cli SUBSCRIBE _control_commands
    redis-cli SUBSCRIBE _vehicle_brake_report


Whenever the Skyline car is on, it automatically creates a ssh reserve tunnel with the sf-pc15.esg.uwaterloo.ca machine. One tunnel is for allowing ssh connection and another tunnel is for the Redis. 

**Connect to  sf-pc15.esg.uwaterloo.ca**

    ssh skyline@sf-pc15.esg.uwaterloo.ca -p 20222

**Connect to car PC from sf-pc15.esg.uwaterloo.ca**

    ssh dev@localhost -p 20224  

**Connect to Redis instance running on the car (master) through sf-pc15.esg.uwaterloo.ca** 

    redis -h localhost -p 20223  