# Cybersecurity Labs Repository

![Wireshark Logo](https://www.wireshark.org/assets/images/logo@2x.png)

A collection of practical network security labs using Wireshark and other tools.

## Current Labs

### [Lab: Examining HTTP vs HTTPS Traffic](/labs/wireshark-http-https/README.md)
- Capture and analyze unencrypted HTTP traffic
- Examine encrypted HTTPS communications
- Compare security characteristics

## Requirements

- **Virtualization Software**: VirtualBox or VMware
- **CyberOps Workstation VM**: [Download from NetAcad](https://www.netacad.com)
- **Wireshark**: Latest stable version
- **Basic Networking Knowledge**: TCP/IP fundamentals

## Getting Started

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/cybersecurity-labs.git
   
   
### Lab-specific README.md
```markdown
# Wireshark Lab: HTTP vs HTTPS Traffic Analysis

![Lab Overview](screenshots/lab-overview.png)

## Objectives

- [x] Capture HTTP traffic to insecure website
- [x] Analyze plaintext credentials in HTTP POST
- [x] Capture HTTPS traffic to secure website
- [x] Examine SSL/TLS encryption characteristics

## Lab Files

| File | Purpose |
|------|---------|
| [http-capture.pcap](captures/http-capture.pcap) | HTTP traffic capture |
| [https-capture.pcap](captures/https-capture.pcap) | HTTPS traffic capture |
| [Lab Report](documentation/lab-report.md) | Formal write-up template |

## Step-by-Step Guide

### Part 1: HTTP Analysis
1. Start capture:
   ```bash
   sudo tcpdump -i enp0s3 -w http-capture.pcap
