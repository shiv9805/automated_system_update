#!/bin/bash

LOGFILE="/var/log/auto_update.log"

echo "Starting system update process" >> $LOGFILE

sudo apt update -y >> $LOGFILE
sudo apt upgrade -y >> $LOGFILE
sudo apt autoremove -y >> $LOGFILE
sudo apt autoclean -y >> $LOGFILE

echo "System update completed successfully" >> $LOGFILE

echo "System update completed successfully" \
| mail -s "System Update Notification" \
user@example.com
