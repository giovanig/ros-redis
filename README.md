# Redis Installation and Configuration HOW TO

-------------------------- 
Redis Installation

1) Get redis 3.2.11 accessing https://redis.io/download
2) Uncompact it, go to the directory, and type "make", "make test", and "make install" (if all test passed)

**Install Dependencies**

    sudo apt-get install redis-tools
    sudo apt-get install ros-kinetic-rocon-python-redis ros-kinetic-rocon-msgs ros-kinetic-rocon-multimaster ros-kinetic-rocon-tools ros-kinetic-zeroconf-msgs

**Install python redis**

    sudo pip3 install redis
    sudo pip install redis

**Connecting directly to the Redis server**

    redis-cli

**HowTo Restart Redis Service**

    sudo service redis-server start
