# 🛡️ Day 14 — File Integrity Checker (Python)

## 📌 Overview
Today I built a simple but powerful **File Integrity Checker** using Python.  
This tool calculates the SHA‑256 hash of a file and alerts if the file has been modified.

This is a core Blue Team concept used in:
- Malware detection
- File tampering detection
- Digital forensics
- System integrity monitoring

---

## 🧠 What This Script Does
- Takes a file path as input  
- Calculates its SHA‑256 hash  
- Saves the hash to a baseline file  
- Re-checks the file later and compares hashes  
- Alerts if the file has changed  

---

## 🛠️ Tools Used
- Python 3
- hashlib (built‑in)
- os module

---

## 📁 Files in This Folder
- `integrity_checker.py` → Main script  
- `baseline.txt` → Stores original hash  
- `analysis.md` → Explanation of results  
- `commands.txt` → Commands used  
- `screenshots/` → Terminal screenshots  

---

## 🚀 How to Use
1. Run the script to generate the baseline hash  
2. Modify the file (simulate tampering)  
3. Run the script again  
4. The script will alert if the file has changed  

---

## ✅ Status
✔️ Completed  
