#!/bin/bash
# Extracts HTTP objects from PCAP

if [ -z "$1" ]; then
  echo "Usage: $0 <path/to/pcap>"
  exit 1
fi

OUTPUT_DIR="../analysis/extracted_http_$(date +%Y%m%d)"
mkdir -p $OUTPUT_DIR

echo "[+] Extracting HTTP objects from $1..."
tshark -r $1 -Y "http" --export-objects "http,$OUTPUT_DIR"

echo "[+] Files extracted to: $OUTPUT_DIR"
ls -lh $OUTPUT_DIR
