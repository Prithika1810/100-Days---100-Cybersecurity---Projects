# Notes – Cron Job Analysis

## List user cron jobs
```bash
crontab -l
```

## List root cron jobs
```bash
sudo crontab -l
```

## List cron directories
```bash
ls -la /etc/cron.daily
ls -la /etc/cron.hourly
ls -la /etc/cron.weekly
ls -la /etc/cron.monthly
```

## View system-wide crontab
```bash
cat /etc/crontab
```

## Enumerate cron jobs for all users
```bash
for user in $(cut -f1 -d: /etc/passwd); do
  sudo crontab -u $user -l 2>/dev/null
done
```
