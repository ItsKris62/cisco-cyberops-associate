### What are the source and destination MAC addresses? Which network interfaces?
- Source MAC: aa:bb:cc:dd:ee:ff (my PC's wlan0 interface)
- Destination MAC: 11:22:33:44:55:66 (router's interface)

### Source and destination ports? Default DNS port?
- Source Port: 54321 (ephemeral)
- Destination Port: 53 (default DNS port)

### Compare MAC/IP with Wireshark and system commands?
- Match exactly with `ip addr` and `ip link show` → confirms the packet originated from my PC.

### In DNS response: source/dest MAC, IP, ports?
- Source and destination fields are reversed compared to the query.
- My PC is now the destination, DNS server is source.

### Can the DNS server do recursive queries?
- Yes — "Recursion available" flag is set in the response.

### How do DNS results compare to nslookup?
- Identical: both show the same CNAME and A record IP addresses.
