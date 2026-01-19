# 🐧 Next 15 Linux Commands Every Cybersecurity Student Should Know 

These commands deepen skills in networking, permissions, system analysis, and file operations.

---

## 🔹 `man` — Show command manual  
Displays detailed documentation for any command.  
**Example:**  
man grep

---

## 🔹 `uname` — System information  
Shows kernel and system details.  
**Example:**  
uname -a

---

## 🔹 `whoami` — Current user  
Displays the username of the logged‑in user.  
**Example:**  
whoami

---

## 🔹 `hostname` — System hostname  
Useful in networked environments.  
**Example:**  
hostname

---

## 🔹 `env` — Show environment variables  
Helpful for debugging scripts and shells.  
**Example:**  
env

---

## 🔹 `export` — Set environment variables  
Used in scripting and tool configuration.  
**Example:**  
export PATH=$PATH:/opt/tools

---

## 🔹 `alias` — Create command shortcuts  
Speeds up repetitive tasks.  
**Example:**  
alias ll="ls -la"

---

## 🔹 `iptables` — Firewall rules  
Used in security hardening and traffic control.  
**Example:**  
sudo iptables -L

---

## 🔹 `systemctl` — Manage systemd services  
Modern replacement for `service`.  
**Example:**  
sudo systemctl status ssh

---

## 🔹 `mount` — Mount filesystems  
Used in forensics to mount disk images.  
**Example:**  
sudo mount /dev/sdb1 /mnt

---

## 🔹 `umount` — Unmount filesystems  
Safely detach drives or images.  
**Example:**  
sudo umount /mnt

---

## 🔹 `rsync` — Sync files and directories  
Fast, reliable backup and transfer tool.  
**Example:**  
rsync -av /source/ /backup/

---

## 🔹 `netstat` — Network connections  
Shows ports, connections, and routing.  
**Example:**  
netstat -tulnp

---

## 🔹 `ss` — Modern socket statistics  
Faster alternative to netstat.  
**Example:**  
ss -tulnp

---

## 🔹 `crontab` — Schedule tasks  
Automate scripts and system jobs.  
**Example:**  
crontab -e
