# Lab Report: HTTP vs HTTPS Traffic Analysis

## Objective
To examine and compare the security characteristics of HTTP and HTTPS protocols by capturing and analyzing network traffic using Wireshark.

## Methodology

### Equipment Used
- CyberOps Workstation VM
- Wireshark 3.6.8
- tcpdump 4.9.3
- Firefox ESR browser

### Test Cases
1. **HTTP Traffic Capture**
   - Target URL: http://www.altoromutual.com/login.jsp
   - Test credentials: Admin/Admin

2. **HTTPS Traffic Capture**
   - Target URL: https://www.netacad.com
   - Attempted login with dummy credentials

### Capture Process
```bash
# HTTP Capture
sudo tcpdump -i enp0s3 -s 0 -w http-capture.pcap

# HTTPS Capture
sudo tcpdump -i enp0s3 -s 0 -w https-capture.pcap

## Results
### HTTP Analysis
- Credentials visible in plaintext in POST request

- Complete request/response headers visible

- No encryption observed

### HTTPS Analysis
- Application data fully encrypted

- Visible SSL/TLS handshake process

- Certificate exchange details available

## Conclusion
HTTPS provides significant security advantages over HTTP by encrypting all communication and verifying server identity through certificates. While HTTPS prevents eavesdropping, it doesn't guarantee the trustworthiness of the website itself.


---

### 2. `reflection-answers.md`
```markdown
# Reflection Questions: Answers

## 1. What are the advantages of using HTTPS instead of HTTP?

HTTPS provides three key security advantages:

1. **Encryption**: All communication is encrypted using TLS/SSL, preventing eavesdropping
2. **Data Integrity**: Protects against tampering during transmission
3. **Authentication**: Verifies you're communicating with the intended server

Additional benefits:
- Required for modern web features (geolocation, push notifications)
- Improves SEO rankings
- Builds user trust with padlock icon

## 2. Are all websites that use HTTPS considered trustworthy?

No, HTTPS only guarantees:

✓ The connection is encrypted  
✓ The certificate is valid  

It does **not** guarantee:
✗ The website's intentions are good  
✗ The business is legitimate  
✗ There are no malware or phishing attempts  

Examples of malicious HTTPS sites:
- Phishing sites with valid certificates
- Malware distribution sites
- Scam websites with SSL encryption

## Security Best Practices
1. Look beyond the padlock - check domain name carefully
2. Verify business information in certificate details
3. Use additional reputation services (Google Safe Browsing)
4. Never enter sensitive information just because a site uses HTTPS
