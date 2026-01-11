#!/bin/bash

echo "[+] User cron jobs:"
crontab -l 2>/dev/null || echo "No user crontab"

echo ""
echo "[+] Root cron jobs:"
sudo crontab -l 2>/dev/null || echo "No root crontab"

echo ""
echo "[+] System cron directories:"
for dir in /etc/cron.daily /etc/cron.hourly /etc/cron.weekly /etc/cron.monthly; do
  echo ""
  echo "Contents of $dir:"
  ls -la $dir
done

echo ""
echo "[+] /etc/crontab contents:"
cat /etc/crontab
