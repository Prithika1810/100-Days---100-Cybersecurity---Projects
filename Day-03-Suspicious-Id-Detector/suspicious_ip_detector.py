import re
from collections import defaultdict

LOG_FILE = "sample_auth.log"
THRESHOLD = 5  # Number of failed attempts before marking as suspicious

def extract_failed_ips(log_file):
    ip_pattern = r"(\d+\.\d+\.\d+\.\d+)"
    failed_ips = defaultdict(int)

    with open(log_file, "r") as file:
        for line in file:
            if "Failed password" in line or "authentication failure" in line:
                match = re.search(ip_pattern, line)
                if match:
                    ip = match.group(1)
                    failed_ips[ip] += 1

    return failed_ips

def detect_suspicious_ips(failed_ips, threshold):
    suspicious = {ip: count for ip, count in failed_ips.items() if count >= threshold}
    return suspicious

def main():
    print("\n=== Suspicious IP Detector ===\n")

    failed_ips = extract_failed_ips(LOG_FILE)
    suspicious_ips = detect_suspicious_ips(failed_ips, THRESHOLD)

    print("Failed Login Attempts:")
    for ip, count in failed_ips.items():
        print(f"  {ip}: {count} attempts")

    print("\nSuspicious IPs (Possible Brute Force):")
    if suspicious_ips:
        for ip, count in suspicious_ips.items():
            print(f"  {ip}: {count} attempts")
    else:
        print("  No suspicious IPs detected.")

    print("\nScan complete.\n")

if __name__ == "__main__":
    main()
