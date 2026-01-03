# Day 2 — Linux File Permissions & Privilege Escalation Basics

## 🔍 Overview
This project demonstrates how insecure file permissions can lead to privilege escalation in Linux systems. I created a vulnerable script with world-writable permissions, exploited it as a secondary user, and then applied secure remediation.

## 🧪 Steps Performed
- Created a test user and a world-writable script (`chmod 777`)
- Verified that another user could read, modify, and execute the script
- Modified the script as `testuser` to demonstrate exploitation
- Applied secure permissions (`chmod 750`, `chown`)
- Confirmed the fix with `Permission denied` as `testuser`

## 🛠️ Commands Used
- `useradd`, `passwd`, `su`
- `chmod`, `chown`, `ls -l`
- `echo`, `cat`, `bash`

## 🛡️ Key Security Concepts
- Principle of Least Privilege
- File permission triads (`rwx`)
- World-writable risks
- Privilege escalation pathways

## 📸 Evidence
Screenshots included in the `/screenshots` folder.

## 🧠 Skills Demonstrated
- Linux administration
- Vulnerability exploitation
- Security hardening
- Documentation and reporting
