#!/bin/bash

echo "[+] Starting Day 08 Linux Persistence & Rootkit Detection Checks..."

echo "[+] Checking cron jobs..."
crontab -l
ls -la /etc/cron*

echo "[+] Checking systemd services..."
systemctl list-units --type=service

echo "[+] Checking shell startup files..."
grep -n "" ~/.bashrc ~/.profile ~/.bash_profile 2>/dev/null

echo "[+] Running chkrootkit..."
sudo chkrootkit

echo "[+] Running rkhunter..."
sudo rkhunter --update
sudo rkhunter --check

echo "[+] Running debsums..."
sudo debsums -s

echo "[+] Listing kernel modules..."
lsmod

echo "[+] Day 08 checks completed."
