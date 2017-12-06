#!/bin/bash
set -e

sudo systemctl stop fischRedis.service
sudo systemctl disable fischRedis.service
sudo rm  /etc/systemd/system/fischRedis.service
sudo rm /usr/local/bin/fischRedis_startup.bash
sudo systemctl daemon-reload
sudo systemctl reset-failed
echo "Delete fischRedis service"
