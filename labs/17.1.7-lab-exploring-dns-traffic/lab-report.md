# Lab 17.1.7 - Exploring DNS Traffic

## Overview
This lab demonstrates DNS protocol analysis using Wireshark to capture and examine DNS query and response packets.

## Objectives
- Capture and analyze DNS traffic
- Understand DNS query/response structure
- Examine protocol headers (Ethernet, IP, UDP, DNS)
- Compare nslookup results with packet captures

## Tools Used
- Wireshark 4.0.8
- nslookup
- Command Prompt/Terminal

## Quick Start
1. Flush DNS cache (`ipconfig /flushdns`)
2. Start Wireshark capture
3. Run `nslookup www.cisco.com`
4. Filter for DNS traffic (`udp.port == 53`)

## Reflection
### 1. From Wireshark, what else can you learn about the network when you remove the filter?

Without the `udp.port == 53` filter, I see:
- ARP requests (mapping IPs to MACs)
- DHCP (if recently connected)
- mDNS (Multicast DNS from local devices)
- HTTP/HTTPS traffic (web browsing)
- Possibly SSDP, NBNS, or LLMNR (Windows sharing protocols)

This reveals other devices, services, and communication happening on the local network.

### 2. How can an attacker use Wireshark to compromise network security?

An attacker could:
- Capture unencrypted traffic (HTTP, FTP, SMTP) to steal usernames, passwords, or data.
- Perform reconnaissance to map network structure, identify servers, and discover active devices.
- Detect weak protocols (e.g., Telnet, HTTP login pages).
- Use ARP spoofing to position themselves as a man-in-the-middle and capture sensitive traffic.

Wireshark is a powerful tool for both defense and attack.
