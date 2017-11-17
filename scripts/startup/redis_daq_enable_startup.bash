#!/bin/bash
set -e

# This script enables auto-startup on the ECU
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sudo cp "$SCRIPT_DIR/redis_daq_startup.bash" /usr/local/bin/redis_daq_startup.bash
sudo cp "$SCRIPT_DIR/redis_daq.service" /etc/systemd/system/redis_daq.service
echo "Copied service files to specified directory"

sudo systemctl enable redis_daq
echo "Auto-start on boot enabled"