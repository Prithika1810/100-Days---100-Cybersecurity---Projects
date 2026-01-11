#!/bin/bash

# Simulate log creation
echo "Fake log entry for simulation" | sudo tee -a /var/log/auth.log

# Delete the log (simulating attacker behaviour)
sudo rm /var/log/auth.log

# Attempt forensic recovery
sudo grep -i 'rm' /var/log/audit/audit.log
sudo strings /var/log/syslog | grep -i 'auth'
sudo grep -i 'sshd' /var/log/syslog
