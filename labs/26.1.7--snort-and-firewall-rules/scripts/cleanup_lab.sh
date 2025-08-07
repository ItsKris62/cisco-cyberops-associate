#!/bin/bash
# Resets the lab environment

echo "[+] Stopping all services..."
sudo pkill -f "mininet|snort|tcpdump|mal_server"

echo "[+] Clearing Mininet processes..."
sudo mn -c > /dev/null 2>&1

echo "[+] Resetting iptables..."
sudo iptables -F
sudo iptables -X

echo "[+] Removing temporary files..."
rm -f ../pcaps/*.tmp ../analysis/latest_*

echo "[+] Cleanup complete!"
