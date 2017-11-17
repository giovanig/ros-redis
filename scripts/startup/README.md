# Startup Scripts

This folder contains scripts used to automatically startup a portion of the
autonomy stack on boot. A Systemd service was created called `redis_daq` that wraps
the script called `redis_daq_startup.bash`.

    bash redis_daq_startup.bash

### To disable or enable auto-start on the ECU
The following steps must be performed on the ECU (or whichever computer you
wish to enable auto-start on).

Simply run the following script to enable auto-startup. This will create a
Systemd service that allows you to use Systemctl to start and stop the autonomy
stack.

    bash redis_daq_enable_startup.bash

`sudo systemctl start redis_daq` will manually start the redis_daq service  
`sudo systemctl stop redis_daq` will manually stop the redis_daq service  
`systemctl status redis_daq` will display status information about the service  

Run the following to disable it.  

    bash redis_daq_disable_startup.bash


### The auto-startup script
This is the script that is called by the `redis_daq` service. If a custom startup
sequence is needed, this is the script that should be modified.

    redis_daq_startup.bash


### Additional Notes
**Crashes**  
The `redis_daq` service is a system service, this means any crashes are reported to
`/var/crash`. If you notice any popups saying "System program problem detected"
after running the `redis_daq` service it means there was a problem with the execution
of the `redis_daq_startup.bash` script. This is likely caused by a node dieing or the
launch file failing for various reasons.

To remove these popups clear the crash directory:
```
sudo rm /var/crash/*
```

**Logs**  
By default `journalctl` handles all Systemd logs. To view logs created by the
`redis_daq` service, simply run the following.
```
journalctl -u redis_daq
```
