# Findings – Cron Job Analysis

## 1. User Cron Jobs
Command:
```bash
crontab -l
```
Result:
- No cron jobs configured for user `prithika`.

---

## 2. Root Cron Jobs
Command:
```bash
sudo crontab -l
```
Result:
- No cron jobs configured for root.

---

## 3. System Cron Directories

### `/etc/cron.daily`
Contains standard system maintenance scripts such as:
- `apt-compat`
- `logrotate`
- `chkrootkit`
- `apache2`
- `man-db`
- `rkhunter`
- `sysstat`

No unusual or newly added files were present.

---

### `/etc/cron.hourly`
Contains only:
- `.placeholder`

No executable scripts or suspicious entries.

---

### `/etc/cron.weekly`
Contains:
- `debsums`
- `man-db`
- `rkhunter`

All are legitimate system scripts.

---

### `/etc/cron.monthly`
Contains:
- `debsums`
- `.placeholder`

No suspicious files.

---

## 4. System-Wide Crontab

Command:
```bash
cat /etc/crontab
```

Contents:
```bash
17 *    * * *   root    cd / && run-parts --report /etc/cron.hourly
25 6    * * *   root    test -x /usr/sbin/anacron || { cd / && run-parts --report /etc/cron.daily; }
47 6    * * 7   root    test -x /usr/sbin/anacron || { cd / && run-parts --report /etc/cron.weekly; }
52 6    1 * *   root    test -x /usr/sbin/anacron || { cd / && run-parts --report /etc/cron.monthly; }
```

These entries match the default Debian/Kali Linux scheduling configuration.

---

## 5. Conclusion
The system’s cron configuration appears clean and consistent with default Linux behaviour. No malicious persistence mechanisms or unexpected scheduled tasks were identified.
