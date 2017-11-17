#!/bin/bash
set -e

sudo systemctl disable redis_daq
echo "Auto-start on boot disabled"
