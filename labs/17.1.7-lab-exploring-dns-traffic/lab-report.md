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
