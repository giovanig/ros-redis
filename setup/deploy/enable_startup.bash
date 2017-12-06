#!/bin/bash
set -e

# This script enables auto-startup on the ECU
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sudo cp "$SCRIPT_DIR/fischRedis_startup.bash" /usr/local/bin/fischRedis_startup.bash
sudo cp "$SCRIPT_DIR/fischRedis.service" /etc/systemd/system/fischRedis.service
sudo systemctl enable fischRedis

echo "Auto-start fischRedis on boot enabled"
