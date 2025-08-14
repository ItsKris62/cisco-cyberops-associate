# Lab Report: Isolate Compromised Host Using 5-Tuple

### Part 1: Review Alerts in Sguil
**Q: What kind of transactions occurred between the client and the server in this attack?**  
A: The attacker executed Linux commands on the target system, including `whoami` and `cat`, indicating command injection and file access.

---

### Part 2: Pivot to Wireshark
**Q: What did you observe? What do the text colors red and blue indicate?**  
A: In the TCP stream, blue represents traffic from the client (attacker) to the server, and red represents server responses. Commands and file contents are visible in plaintext.

**Q: The attacker issues the `whoami` command. What does this show?**  
A: The response `root` indicates the attacker has gained root-level privileges on the target system.

**Q: What kind of data has the threat actor been reading?**  
A: The attacker used `cat confidential.txt` to read the contents of the file.

---

### Part 3: Pivot to Kibana
**Q: What are the source and destination IP addresses and port numbers for the FTP traffic?**  
A:  
- **Source IP**: 209.165.201.17 (Attacker)  
- **Destination IP**: 209.165.200.235 (Target)  
- **Ports**: Source port varies, Destination port 21 (FTP control)

**Q: What are the user credentials to access the FTP site?**  
A: `admin:admin` (visible in the Kibana bro_ftp log entry).

**Q: What are the different types of files? (MIME Type)**  
A: `text/plain`, `application/octet-stream`

**Q: What are the file sources listed?**  
A: `FTP_DATA`

**Q: What is the MIME type, IPs, and time of FTP transfer?**  
A:  
- **MIME Type**: `text/plain`  
- **Source IP**: 209.165.201.17  
- **Destination IP**: 209.165.200.235  
- **Time**: June 11, 2020 (exact timestamp from log)

**Q: What is the text content of the file transferred?**  
A: `This is a confidential file with sensitive data.`

**Q: Recommendation to stop further unauthorized access?**  
A:  
- Disable insecure services like FTP.  
- Implement firewall rules to block unauthorized external access.  
- Patch the vulnerability that allowed initial compromise.  
- Monitor for suspicious 5-tuples.  
- Enforce strong authentication and conduct log audits.
