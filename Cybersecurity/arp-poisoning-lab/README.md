# Network Security Analysis: ARP Poisoning Man-in-the-Middle and Credential Interception

## Project Overview
This project demonstrates a Man-in-the-Middle (MitM) attack by exploiting fundamental design weaknesses in the Address Resolution Protocol (ARP). Within a controlled lab environment, ARP cache poisoning was performed to transparently intercept network traffic and capture unencrypted FTP credentials in transit.

The objective of this lab was to analyze real-world risks associated with legacy and insecure network protocols and to document effective mitigation strategies from a defensive security perspective.

## Environment and Tooling
Attacker system running Kali Linux within a W4SP lab environment  

Tools used include the Metasploit Framework via msfconsole and Wireshark for packet analysis  

Protocols analyzed include ARP, FTP, and TCP  

Target systems consisted of a victim workstation (Vic1), two FTP servers (FTP1 and FTP2), and a default gateway at 192.100.200.1  

## Attack Methodology

## Network Reconnaissance
Initial reconnaissance identified the IP and MAC addresses of the victim workstation at 192.100.200.164, the FTP servers, and the default gateway. This phase confirmed the presence of a flat internal network with no ARP inspection or spoofing protections enabled.

## ARP Poisoning Configuration
The Metasploit module auxiliary/spoof/arp/arp_poisoning was configured to execute the attack. Key parameters included specifying the victim workstation as DHOSTS, the default gateway as SHOSTS, and the Kali Linux system as the local attacker address. This configuration enabled bidirectional traffic interception between the victim and gateway.

## ARP Cache Manipulation
The victim’s ARP cache was successfully poisoned, causing the gateway IP address to resolve to the attacker’s MAC address Ee:bf:52:41:b7:5c. As a result, all traffic intended for the gateway was transparently redirected through the attacker system without user awareness.

## Traffic Interception and Analysis
Redirected traffic was captured in real time using Wireshark. Display filters were applied to isolate FTP traffic, allowing for focused inspection of authentication exchanges between the victim workstation and the FTP servers.

## Credential Extraction
Cleartext FTP credentials were successfully extracted from captured packets, demonstrating the inherent risk of transmitting authentication data over unencrypted protocols, even within internal networks.

## Security Findings

## Identified Vulnerabilities
ARP lacks authentication and integrity verification mechanisms  
FTP transmits usernames and passwords in cleartext  
No network-level protections against ARP spoofing were implemented  

## Impact
An attacker with access to the same subnet can silently intercept and manipulate network traffic  
Sensitive credentials can be compromised without generating alerts or user-visible indicators  

## Recommended Mitigations
Enable Dynamic ARP Inspection on managed switches  
Replace FTP with encrypted alternatives such as SFTP or FTPS  
Implement network segmentation to reduce lateral attack surfaces  
Use static ARP entries for critical infrastructure where feasible  
Monitor for ARP anomalies using IDS or IPS solutions  

## Proof of Work
Supporting screenshots and diagrams are included in the screenshots directory. These artifacts document the Metasploit ARP poisoning configuration, Wireshark credential capture, and the lab network topology.

## Skills Demonstrated
Network traffic analysis and packet inspection  
ARP-based Man-in-the-Middle attack techniques  
Protocol-level vulnerability assessment  
Offensive security testing in controlled environments  
Defensive remediation planning and risk mitigation  
Technical security documentation
