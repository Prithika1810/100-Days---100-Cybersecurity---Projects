# 🐧  15 Linux Commands Every Cybersecurity Student Should Know

These commands expand practical toolkit for threat hunting, system analysis, networking, and file operations.

---

## 🔹 `find` — Search for files  
Locate files by name, size, type, or date.  
**Example:**  
find / -name "*.log"

---

## 🔹 `locate` — Fast file search  
Uses a database to quickly find files.  
**Example:**  
locate passwd

---

## 🔹 `df` — Disk space usage  
Shows available and used disk space.  
**Example:**  
df -h

---

## 🔹 `du` — Directory size  
Check how much space a folder uses.  
**Example:**  
du -sh /var/log

---

## 🔹`history` — View command history  
Useful for auditing and repeating commands.  
**Example:**  
history | grep ssh

---

## 🔹 `tail` — View end of a file  
Great for monitoring logs in real time.  
**Example:**  
tail -f /var/log/auth.log

---

## 🔹 `head` — View beginning of a file  
Quick preview of file structure.  
**Example:**  
head /etc/passwd

---

## 🔹 `wget` — Download files  
Used for grabbing tools, payloads, or scripts.  
**Example:**  
wget https://example.com/tool.sh

---

## 🔹 `curl` — Transfer data  
Useful for APIs, testing endpoints, and downloading.  
**Example:**  
curl http://localhost:8080

---

## 🔹 `scp` — Secure file copy  
Transfers files between systems over SSH.  
**Example:**  
scp file.txt user@192.168.1.10:/home/user/

---

## 🔹 `ssh` — Remote login  
Access remote machines securely.  
**Example:**  
ssh user@192.168.1.10

---

## 🔹 `tar` — Archive and extract files  
Common for logs, backups, and toolkits.  
**Example:**  
tar -xvf logs.tar

---

## 🔹 `zip` — Compress files  
Lightweight compression for sharing.  
**Example:**  
zip backup.zip *.txt

---

## 🔹 `unzip` — Extract zip files  
Open compressed archives.  
**Example:**  
unzip backup.zip

---

## 🔹 `service` — Manage system services  
Start, stop, or check service status.  
**Example:**  
sudo service ssh status
