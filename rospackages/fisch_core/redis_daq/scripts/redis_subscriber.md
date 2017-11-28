# Access redis from the PC in Waterloo

**ssh into the server at waterloo**

    ssh skyline@sf-pc15.esg.uwaterloo.ca -p 20222

**run the python script**

    python redis2csv.py


# Access redis while in the skyline PC

    redis-cli

    SUBSCRIBE _control_commands