#!/bin/bash

# Suspicious downloads
logger -t suspicious_download "user krish executed wget https://example.com/tool.sh"
logger -t suspicious_download "user krish executed wget https://evil.test/file.txt"

# Cron persistence
echo "* * * * * /tmp/backdoor.sh" | sudo tee /etc/cron.d/malicious

# Port scan
nmap -p- localhost
