# 🔍 Day 08 — Findings Report  
Linux Persistence & Rootkit Detection

## 🕒 1. Cron Job Analysis
**Commands Used:**
```bash
crontab -l
ls -la /etc/cron*
```

**Findings:**
- No suspicious cron entries found.
- No modified system cron files.
- No jobs running from `/tmp`, `/dev/shm`, or hidden directories.

---

## ⚙️ 2. Systemd Service Review
**Commands Used:**
```bash
systemctl list-units --type=service
cat /etc/systemd/system/*.service
```

**Findings:**
- No unknown or malicious services detected.
- No services pointing to suspicious binaries.
- No persistence-related service modifications.

---

## 🧩 3. Shell Startup File Inspection
**Files Checked:**
- `~/.bashrc`
- `~/.profile`
- `~/.bash_profile`

**Findings:**
- No injected commands.
- No reverse shells.
- No malicious aliases or environment variables.

---

## 🛡️ 4. Rootkit Scanning

### chkrootkit
**Command:**
```bash
sudo chkrootkit
```

**Findings:**
- No “INFECTED” flags.
- No hidden processes detected.
- No suspicious network ports.

---

### rkhunter
**Command:**
```bash
sudo rkhunter --update
sudo rkhunter --check
```

**Findings:**
- No modified system binaries.
- No unexpected hidden files.
- No suspicious kernel modules.
- Standard warnings only (normal for Kali).

---

## 🔐 5. File Integrity Verification

### debsums
**Commands:**
```bash
debsums -s
sudo debsums -s
```

**Findings:**
- Permission-denied messages on protected files (expected).
- No missing or altered checksums.

---

## 🧩 6. Kernel Module Inspection
**Command:**
```bash
lsmod
```

**Findings:**
- All modules appear legitimate.
- No unknown or suspicious modules.
- No abnormal dependencies.

---

## 🧠 Summary
The system shows **no signs of persistence mechanisms, rootkits, or tampering**.  
All checks returned clean results.

---

## 📸 Screenshots Collected
- `chkrootkit.png`
- `rkhunter.png`
- `debsums.png`
- `lsmod.png`

