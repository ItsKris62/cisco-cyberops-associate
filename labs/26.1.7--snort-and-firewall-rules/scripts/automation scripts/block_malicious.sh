#!/bin/bash
# Blocks malicious server via iptables

echo "[+] Adding iptables rule to block 209.165.202.133:6666..."
sudo iptables -I FORWARD -p tcp -d 209.165.202.133 --dport 6666 -j DROP

echo "[+] Current rules:"
sudo iptables -L FORWARD -v -n
