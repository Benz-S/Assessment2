#!/bin/bash
#Student ID : S4133806
#Student Name : Benz Seal
# Script to run automatic updates and log output in the same directory as the script

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
LOG_FILE="$SCRIPT_DIR/Linux.log"

sudo apt-get update >> "$LOG_FILE" 2>&1
sudo apt-get upgrade -y >> "$LOG_FILE" 2>&1
