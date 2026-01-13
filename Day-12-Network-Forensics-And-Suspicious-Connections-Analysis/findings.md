# Day 12 — Findings: Network Forensics & Binary Analysis

## 1. Network Listener Analysis
- Port 22 was identified as the only active listener.
- Protocol: TCP
- State: LISTEN
- Expected behaviour for SSH service.

## 2. Process Mapping
- PID: 1157
- Process: sshd
- User: root
- Command: `/usr/sbin/sshd -D`

## 3. Binary Analysis
- Path: `/usr/sbin/sshd`
- File type: ELF 64-bit LSB pie executable (ARM aarch64)
- Stripped: Yes
- Strings output: Standard SSH and SELinux-related functions

## 4. Risk Assessment
- No suspicious ports or processes detected.
- SSH daemon behaviour matches expected system configuration.
- No persistence mechanisms or anomalies found.

## 5. Verdict
**System is clean. No malicious activity detected.**
