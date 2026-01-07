Network Security Analysis: ARP Poisoning MitM & Credential Interception
Project Overview

This project demonstrates a Man-in-the-Middle (MitM) attack by exploiting design weaknesses in the Address Resolution Protocol (ARP). Using a controlled lab environment, I performed ARP cache poisoning to intercept network traffic and capture unencrypted FTP credentials in transit.

The objective of this lab was to analyze real-world risks associated with legacy protocols and to document effective mitigation strategies from a defensive security perspective.

Environment & Tooling
Attacker System
Kali Linux (W4SP Lab Environment)

Tools
Metasploit Framework (msfconsole)
Wireshark

Protocols Analyzed
ARP
FTP
TCP

Target Systems
Victim Workstation (Vic1)
FTP Servers (FTP1, FTP2)
Default Gateway (192.100.200.1)


Attack Methodology

1. Network Reconnaissance
Identified IP and MAC addresses for:
Victim workstation (192.100.200.164)
FTP servers
Default gateway
This reconnaissance phase confirmed a flat network with no ARP inspection controls enabled.

2. ARP Poisoning Configuration
Configured Metasploit module:
auxiliary/spoof/arp/arp_poisoning
Key parameters set:
DHOSTS – victim workstation
SHOSTS – default gateway
LOCALSIP – attacker (Kali Linux)

3. ARP Cache Manipulation
Successfully poisoned the victim’s ARP cache
Victim associated the gateway IP with the attacker’s MAC address:
Ee:bf:52:41:b7:5c
Traffic intended for the gateway was transparently redirected through the attacker

4. Traffic Interception & Analysis
Captured redirected traffic using Wireshark and applied display filters:


5. Credential Extraction
Successfully extracted cleartext FTP credentials
Demonstrated the risk of using unencrypted protocols on internal networks

Security Findings
-Identified Vulnerabilities
-ARP lacks authentication and integrity verification
-FTP transmits credentials in cleartext
-No network-level protections against ARP spoofing were present

Impact
-An attacker on the same subnet can silently intercept sensitive traffic
-Credentials can be compromised without triggering user awareness

Recommended Mitigations
-Enable Dynamic ARP Inspection (DAI) on managed switches
-Replace FTP with SFTP or FTPS
-Implement network segmentation
-Use static ARP entries for critical infrastructure where applicable
-Monitor for ARP anomalies via IDS/IPS

Proof of Work
-Screenshots and diagrams are available in the /screenshots directory:
-Metasploit ARP poisoning configuration
-Wireshark credential capture
-Network topology diagram

Skills Demonstrated
-Network traffic analysis
-ARP-based attack techniques
-Protocol-level vulnerability assessment
-Defensive remediation planning
-Security documentation
