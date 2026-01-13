# Day 12 — Notes

## Commands Used
ss -tulnp
netstat -tulnp
lsof -i
ps -p <PID> -o pid,ppid,user,cmd
file /usr/sbin/sshd
strings /usr/sbin/sshd | head

## Observations
- Only port 22 was listening.
- PID 1157 mapped to sshd.
- Binary analysis showed no anomalies.
- No unexpected services or listeners.
