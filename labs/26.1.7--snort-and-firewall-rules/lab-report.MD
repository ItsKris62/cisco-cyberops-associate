# Lab: Snort and Firewall Rules

## Objective
Simulate a malware download, detect it with Snort IDS, and block it using iptables firewall rules.

## Topology
![Network Diagram](screenshots/3_mininet_start.png)  
*(Mininet topology with R1 as IDS/Firewall, H10 as malware server, H5 as attacker)*

## Steps
1. **Environment Setup**  
   - Configured DHCP and verified connectivity.  
   ![Ping Test](screenshots/2_ping_test.png)

2. **Attack Simulation**  
   - Downloaded `W32.Nimda.Amm.exe` from H10 to H5.  
   ![Malware Download](screenshots/6_wget_download.png)

3. **IDS Detection**  
   - Snort alerted on malicious traffic.  
   ![Snort Alert](screenshots/8_snort_alert.png)

4. **Firewall Mitigation**  
   - Blocked traffic to port 6666 using iptables.  
   ![Firewall Rule](screenshots/9_iptables_rule.png)

## Key Findings
- **Snort Alert**: Detected HTTP download on suspicious port (6666).  
- **Firewall Effectiveness**: iptables successfully blocked subsequent downloads.  
- **PCAP Analysis**: Captured traffic for forensic analysis (`pcaps/nimda.download.pcap`).

## Tools Used
- Mininet (Network simulation)
- Snort (IDS)
- iptables (Firewall)
- tcpdump (Traffic capture)

## References
- [Snort Documentation](https://www.snort.org/)
- [iptables Manual](https://linux.die.net/man/8/iptables)
