#!/bin/bash
# Starts Mininet topology and Snort IDS

echo "[+] Starting Mininet topology..."
sudo ./lab.support.files/scripts/cyberops_extended_topo_no_fw.py &

sleep 5  # Wait for topology to initialize

echo "[+] Launching Snort IDS on R1..."
xterm -hold -e "sudo ./lab.support.files/scripts/start_snort.sh" &

echo "[+] Starting malware server on H10..."
xterm -hold -e "sudo ./lab.support.files/scripts/mal_server_start.sh" &

echo "[+] Ready! Open H5 terminal to simulate attacks."
