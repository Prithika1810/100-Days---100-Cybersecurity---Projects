# 🛡️ Day 08 — Linux Persistence & Rootkit Detection

## 📌 Overview
This module focuses on detecting persistence mechanisms and identifying potential rootkits on a Linux system. These techniques are essential in Digital Forensics & Incident Response (DFIR), malware investigations, and post‑exploitation analysis.  
The goal is to understand how attackers maintain long‑term access and how defenders can uncover hidden modifications.

---

## 🎯 Objectives
- Enumerate common Linux persistence mechanisms.
- Detect malicious cron jobs, systemd services, and shell modifications.
- Perform rootkit scans using `chkrootkit` and `rkhunter`.
- Verify system file integrity using `debsums`.
- Inspect kernel modules for anomalies or hidden components.
- Document findings in a structured, forensic‑ready format.

---

## 🔍 1. Persistence Enumeration

### 🕒 Cron Jobs
Cron is a common persistence vector used by attackers to execute scripts at intervals.

```bash
crontab -l
ls -la /etc/cron*
```

**What to look for:**
- Unknown scripts or commands  
- Jobs running from `/tmp`, `/dev/shm`, or hidden directories  
- Modified system cron files  

---

### ⚙️ Systemd Services
Attackers often create or modify systemd services to maintain persistence.

```bash
systemctl list-units --type=service
cat /etc/systemd/system/*.service
```

**Red flags:**
- Services pointing to suspicious binaries  
- Services with unusual names  
- Services running from user-writable directories  

---

### 🧩 Shell Startup Files
These files execute commands automatically when a user logs in.

Inspect:
- `~/.bashrc`
- `~/.profile`
- `~/.bash_profile`

**Indicators of compromise:**
- Reverse shell commands  
- Aliases hiding malicious binaries  
- Unexpected environment variables  

---

## 🧪 2. Rootkit Detection

### 🔍 chkrootkit
A lightweight tool for detecting known rootkits.

```bash
sudo apt install chkrootkit
sudo chkrootkit
```

**Review for:**
- “INFECTED” flags  
- Hidden processes  
- Suspicious network ports  

---

### 🛡️ rkhunter
A more comprehensive rootkit and malware scanner.

```bash
sudo apt install rkhunter
sudo rkhunter --update
sudo rkhunter --check
```

**Pay attention to:**
- Modified system binaries  
- Unexpected hidden files  
- Suspicious kernel modules  
- Warnings about file permissions  

---

## 🔐 3. File Integrity Verification

### 📦 debsums
Used to verify the integrity of installed package files.

Initial scan:
```bash
debsums -s
```

Full privileged scan:
```bash
sudo debsums -s
```

**Notes:**
- Permission-denied messages on protected system files are normal.  
- Missing or altered checksums may indicate tampering.  

---

## 🧩 4. Kernel Module Inspection

Kernel modules can be abused for stealthy persistence or privilege escalation.

```bash
lsmod
```

**What to check:**
- Unknown or suspicious module names  
- Modules with unusual dependencies  
- Modules that should not be loaded on your system  
- Signs of kernel-level tampering  

Your output showed normal modules with no anomalies.

---

## 📝 5. Findings Summary

Use this table to document your results clearly:

| Category | Findings |
|----------|----------|
| Cron Jobs | *No suspicious entries found / or list findings* |
| Systemd Services | *Document any unusual services* |
| Shell Files | *Record any injected commands* |
| chkrootkit | *Summarize warnings or clean output* |
| rkhunter | *Summarize warnings or clean output* |
| debsums | *Integrity check results* |
| Kernel Modules | *Any anomalies or confirm clean* |

---

## 🧠 Key Takeaways
- Persistence mechanisms often hide in plain sight — cron, systemd, and shell files are high‑value targets.  
- Rootkits can modify system binaries, hide processes, or load malicious kernel modules.  
- Integrity checks and module inspection help validate system trust.  
- Combining multiple tools gives a more complete forensic picture.

---

## ✅ Completion Status
Day 08 is fully completed.  
You successfully performed persistence checks, rootkit scans, integrity verification, and kernel module analysis — all essential DFIR skills that strengthen your Linux security foundation.
