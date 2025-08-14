# Lab 8.2.8 – Using Wireshark to Examine Ethernet Frames

## Objective
- Analyze the structure of Ethernet II frames.
- Capture and examine ARP and ICMP frames during local and remote communication.
- Understand how MAC and IP addresses are used in Layer 2 vs Layer 3.

## Tools Used
- CyberOps Workstation VM
- Wireshark
- `ping`, `arp`, `ip`, `netstat`

## Key Findings
- Ethernet II frames use `Destination`, `Source`, and `Type` fields to deliver data.
- Local traffic uses direct MAC addressing; remote traffic uses the gateway's MAC.
- ARP resolves IP → MAC before communication begins.
- The destination MAC address for remote traffic is the **default gateway**, not the final host.

## Screenshots
See `/screenshots/` for:
- ARP broadcast request
- ICMP Echo Request/Reply with MAC reversal
- Ethernet II frame structure
- Packet Bytes highlighting

## Reflection
> *Why doesn't Wireshark show the preamble?*  
The preamble is processed at the physical layer (Layer 1) by the NIC and is stripped before the frame reaches software like Wireshark. It ensures synchronization between sender and receiver.

> *Why does the destination MAC stay the same for remote traffic?*  
Because all traffic to external networks is sent to the default gateway for routing. The MAC address is only for the next hop, not the final destination.

## Reflection

### 1. Wireshark does not display the preamble field of a frame header. What does the preamble contain?

The **preamble** contains 7 bytes of alternating 1s and 0s (`10101010...`) used for synchronization between sender and receiver. It allows the receiving NIC to lock onto the incoming signal before the actual frame data begins. The 8th byte is the **Start Frame Delimiter (SFD)** (`10101011`), which signals the end of the preamble and the start of the frame.

Wireshark does not capture the preamble because it is handled at the physical layer (Layer 1) by the network interface hardware.
