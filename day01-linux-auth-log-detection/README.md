# Day 01 – Linux Authentication Log Attack Detection

## Objective  
Detect suspicious SSH login activity using Linux authentication logs.

## Tools Used  
- Kali Linux  
- Bash  
- `journalctl`, `grep`, `awk`

## What I Did  
1. Simulated failed SSH login attempts using:
   - `ssh wronguser@localhost`
   - `ssh prithika@localhost` (with incorrect password)
2. Queried failed login attempts:
   - `sudo journalctl | grep "Failed password"`
3. Counted failed attempts by IP:
   - `sudo journalctl | grep "Failed password" | awk '{print $(NF-3)}' | sort | uniq -c | sort -nr`
4. Queried successful logins:
   - `sudo journalctl | grep "Accepted password"`
5. Wrote a Bash script to detect brute-force attempts from `/var/log/auth.log`
6. Documented findings in a SOC-style incident report

## Findings  
- 7 failed login attempts from `::1`  
- 1 failed + 6 successful logins 
- Targeted usernames: `wronguser`, `prithika`, `kali`  
- Brute-force pattern followed by successful access

## Recommendations  
- Enforce SSH key-based authentication  
- Enable and tune `fail2ban`  
- Disable root login  
- Monitor logs and forward to SIEM

## Reflection  
This project helped me think like a SOC analyst — correlating failed and successful logins, scripting detection logic, and documenting mapped findings.

