#!/bin/bash
# Extracts critical alerts from Snort log

ALERT_LOG="/var/log/snort/alert"
OUTPUT="../analysis/snort_alerts_$(date +%Y%m%d).txt"

echo "[+] Parsing Snort alerts..."
grep -E "Malicious Server Hit|Priority: 1" $ALERT_LOG > $OUTPUT

echo "[+] Top malicious IPs:"
grep -oP '(\d+\.){3}\d+' $OUTPUT | sort | uniq -c | sort -nr

echo "[+] Analysis saved to: $OUTPUT"
