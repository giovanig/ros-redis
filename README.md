Redis Installation and Configuration HOW TO

-------------------------- 
Redis Installation

1) Get redis 3.2.11 accessing https://redis.io/download
2) Uncompact it, go to the directory, and type "make", "make test", and "make install" (if all test passed)

---------------------------
How to setup a master-slave Redis replication (from https://discuss.pivotal.io/hc/en-us/articles/205309278-How-to-setup-Redis-master-and-slave-replication)

Method 1: by changing configuration files and restarting the services

1) Verify if Redis server (master) is running on port 6379 (see /etc/redis/redis.conf)
2) Configure a password in the Redis master configuration file (). Add or uncomment the following line: "requirepass mypassword"
3) Restart Redis-server: sudo service redis restart
4) Go to the Redis slave machine and configure the slave to connect to the master by editing the configuration file located at /etc/redis/redis.conf:
- Uncomment the line slaveof and edit it: slaveof redis-server-ip 6379
- Uncomment and edit the line masterauth: masterauth mypassword (the same configured in the master Redis server)
5) Restart Redis slave: sudo service redis restart

Method 2: by using redis-cli without restarting

1) Set a password on the Redis master
redis-cli config set requirepass mypass
2) Set the password on the Redis slave
redis-cli config set masterauth mypass
3) Make Redis slave of
redis-cli SLAVEOF server-IP 6379

After configuring, you can verify if both master and slave are working properly.

--- In the master (the output should be similar)  
redis-cli -a mypassword info replication  
\# Replication
role:master
connected_slaves:1
slave0:ip=::1,port=6380,state=online,offset=29,lag=0
master_repl_offset:29
repl_backlog_active:1
repl_backlog_size:1048576
repl_backlog_first_byte_offset:2
repl_backlog_histlen:28

--- In the slave
redis-cli info replication
\# Replication
role:slave
master_host:master IP
master_port:6379
master_link_status:up
master_last_io_seconds_ago:7
master_sync_in_progress:0
slave_repl_offset:113
slave_priority:100
slave_read_only:1
connected_slaves:0
master_repl_offset:0
repl_backlog_active:0
repl_backlog_size:1048576
repl_backlog_first_byte_offset:0
repl_backlog_histlen:0

---------------------------------------------
How to connect to a remote Redis Server

redis-cli -h server-IP -p PORT

