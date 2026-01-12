# 🐧 Top 15 Linux Commands Every Cybersecurity Student Should Know

A clean, mapped cheat sheet of essential Linux commands used across cybersecurity, digital forensics, penetration testing, and system administration.  
Each command includes a short explanation and a practical example.

---

## 🔹 1. `ls` — List files  
Shows files and directories in the current location.  
**Example:**  
```
ls -la
```

---

## 🔹 2. `cd` — Change directory  
Move between folders.  
**Example:**  
```
cd /var/log
```

---

## 🔹 3. `pwd` — Print working directory  
Displays your current path in the filesystem.  
**Example:**  
```
pwd
```

---

## 🔹 4. `cat` — View file contents  
Useful for reading logs, configs, and scripts.  
**Example:**  
```
cat /etc/passwd
```

---

## 🔹 5. `less` — Scroll through long files  
Ideal for large log files.  
**Example:**  
```
less /var/log/syslog
```

---

## 🔹 6. `grep` — Search inside files  
Perfect for log analysis and threat hunting.  
**Example:**  
```
grep "Failed password" /var/log/auth.log
```

---

## 🔹 7. `chmod` — Change file permissions  
Controls who can read, write, or execute a file.  
**Example:**  
```
chmod 600 id_rsa
```

---

## 🔹 8. `chown` — Change file owner  
Used in forensics and system recovery.  
**Example:**  
```
sudo chown root:root /etc/shadow
```

---

## 🔹 9. `ps` — View running processes  
Helps identify suspicious or unknown processes.  
**Example:**  
```
ps aux | grep ssh
```

---

## 🔹 10. `top` — Live system monitoring  
Shows CPU, memory usage, and active processes.  
**Example:**  
```
top
```

---

## 🔹 11. `kill` — Terminate processes  
Stops rogue or malicious processes.  
**Example:**  
```
sudo kill 1234
```

---

## 🔹 12. `ip a` — Network interfaces  
Displays IP addresses and network details.  
**Example:**  
```
ip a
```

---

## 🔹 13. `ping` — Test connectivity  
Quick network troubleshooting.  
**Example:**  
```
ping google.com
```

---

## 🔹 14. `sudo` — Run commands as root  
Required for system‑level tasks.  
**Example:**  
```
sudo nano /etc/ssh/sshd_config
```

---

## 🔹 15. `apt update` — Update package lists  
Used for patching and installing tools.  
**Example:**  
```
sudo apt update && sudo apt upgrade
```

---

# 📌 Why This Project Matters  
- Shows your comfort with Linux  
- Demonstrates core cybersecurity fundamentals  
- Perfect for beginners and recruiters  
- Clean, simple, and instantly useful  

---
