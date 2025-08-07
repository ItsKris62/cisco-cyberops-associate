# Lab: Extract an Executable from a PCAP

![Network Analysis](screenshots/http_get_request.png)

## Description
This lab demonstrates how to analyze network traffic captures (PCAP files) and extract downloaded files, specifically focusing on identifying and extracting a malicious executable from a network capture using Wireshark.

## Lab Objectives
- Analyze pre-captured network traffic logs
- Extract downloaded files from PCAP captures using Wireshark
- Identify characteristics of malicious executables

## Files Included
- `pcaps/nimda.download.pcap`: Network capture containing malware download
- `samples/W32.Nimda.Amm.exe`: Extracted executable file
- `analysis/findings.md`: Analysis notes and observations

## Steps Performed

### Part 1: Analyzing Pre-Captured Logs
1. Examined the PCAP file structure
2. Identified the HTTP GET request for the malicious file
3. Followed the TCP stream to analyze the transaction

### Part 2: Extracting Downloaded Files
1. Exported HTTP objects from the PCAP
2. Saved the malicious executable
3. Verified the file properties

## Key Findings
- The PCAP contained a single HTTP transaction downloading `W32.Nimda.Amm.exe`
- File analysis confirmed it was a Windows PE executable
- Visible strings in the TCP stream suggested it was a renamed test file

## Screenshots
| Description | Image |
|-------------|-------|
| Directory Listing | ![Directory](screenshots/directory_listing.png) |
| HTTP GET Request | ![HTTP Request](screenshots/http_get_request.png) |
| File Export | ![Export](screenshots/export_http_objects.png) |

## Tools Used
- Wireshark (v3.6.0)
- Linux file command
- CyberOps Workstation VM

## References
- [Wireshark Documentation](https://www.wireshark.org/docs/)
- [PE File Format](https://docs.microsoft.com/en-us/windows/win32/debug/pe-format)

## Author
- CHRISTOPHER RATENG  
- 648181
- ISC 6120A 
- USIU 
