# Lab: Isolate Compromised Host Using 5-Tuple

## 🔍 Objective
Identify the compromised host and file (`confidential.txt`) using the 5-tuple (source IP, source port, destination IP, destination port, protocol) by analyzing logs from Sguil, Wireshark, and Kibana.

## 🧩 Tools Used
- Security Onion
- Sguil (alert analysis)
- Wireshark (packet inspection)
- Kibana (log correlation)

## 🕵️ Key Findings
- **Compromised File**: `confidential.txt`
- **Attack Vector**: Exploitation leading to root access, followed by FTP exfiltration.
- **Threat Actor IP**: `209.165.201.17`
- **Target Server IP**: `209.165.200.235`
- **Protocol**: FTP (cleartext credentials)
- **Credentials Used**: `admin:admin` (inferred from logs)
- **File Content**: `This is a confidential file with sensitive data.`

## 📎 Evidence
See screenshots and exported logs in `/screenshots` and `/evidence`.

## 🛡️ Recommendation
- Disable FTP or switch to SFTP/SCP.
- Enforce strong authentication and MFA.
- Isolate and patch the compromised host.
- Rotate all credentials used on the target system.

