# 🔎 Day 13 Analysis — Auditd Threat Hunting

## 1. Purpose of the Audit Rules
The audit rules were created to detect:
- Unauthorized permission changes
- Suspicious ownership modifications
- Access to critical system files
- Privileged command execution

These actions are commonly seen in:
- Privilege escalation attempts
- Malware activity
- Insider misuse
- Persistence mechanisms

---

## 2. What Activity Was Simulated
I executed:
- chmod 777 on a test file
- chown root:root on the same file
- Access to /etc/passwd

These actions triggered audit logs.

---

## 3. Log Interpretation

### Example fields found in ausearch output:
- **type=SYSCALL** → Shows the system call (chmod, chown, etc.)
- **exe="/usr/bin/chmod"** → The binary executed
- **name="/tmp/testfile"** → File affected
- **uid=0** → User who executed the command
- **auid=1000** → Original login user
- **success=yes** → Action succeeded
- **msg=audit(…):** → Timestamp

### What this means:
- I successfully detected the execution of sensitive commands.
- The logs clearly show who executed the command and what file was modified.
- This is exactly how real SOC analysts detect malicious behavior.

---

## 4. Why This Matters
Auditd is used in:
- Enterprise Linux servers
- Cloud workloads
- Incident response investigations
- Compliance (PCI-DSS, HIPAA, etc.)

Being able to write audit rules and interpret logs is a **core Blue Team skill**.

---

## 5. Conclusion
Day 13 strengthened my ability to:
- Monitor system-level activity
- Detect suspicious behavior
- Perform forensic analysis
- Build detection rules

This knowledge is essential for becoming a cybersecurity analyst or SOC engineer.
