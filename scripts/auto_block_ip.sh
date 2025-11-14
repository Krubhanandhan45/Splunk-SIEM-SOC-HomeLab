#!/bin/bash
IP=$1
sudo ufw deny from $IP
echo "$(date) Blocking IP $IP" >> /var/log/splunk_auto_block.log
