# Day 20 – World‑Writable Directory Audit

## 🔍 Objective
Identify all world‑writable directories on a Linux system using the `find` command.  
World‑writable directories allow any user to write files inside them, which can introduce security risks if not monitored.

---

## 🧪 Commands Used

### 1. Find world‑writable directories
```bash
sudo find / -type d -perm -0002 -ls 2>/dev/null
```

### 2. (Optional) Find world‑writable files
```bash
sudo find / -type f -perm -0002 -ls 2>/dev/null
```

---

## 📋 What I Found
The system returned several world‑writable directories such as:

- /tmp  
- /var/tmp  
- /dev/shm  
- /run/lock  
- /run/screen  
- Temporary and session directories created by system services  

These are normal on Linux systems and required for temporary storage, inter‑process communication, and system operations.

---

## ⚠️ Why This Matters
World‑writable directories can be abused by attackers to:

- Drop malicious files  
- Modify temporary files  
- Escalate privileges  
- Hide persistence mechanisms  

Regular auditing helps detect unusual or unsafe entries.

---

## 🔧 Mitigation (Optional)
If a suspicious directory is found:

```bash
sudo chmod o-w <directory>
```

I did not modify any permissions because the directories found were system‑required and safe.

---

## 📸 Screenshots
- Terminal output of the world‑writable directory scan  
- (Optional) Output of the file scan  

Screenshots are included in this folder as proof of execution.

---

## ✅ Summary
This task helped me understand:

- How to audit file and directory permissions  
- Why world‑writable locations matter in system security  
- How attackers may misuse them  
- How to identify and review them safely  
