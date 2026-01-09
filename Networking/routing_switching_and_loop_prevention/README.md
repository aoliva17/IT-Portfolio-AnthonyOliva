Networking Anchor: Enterprise Switching & Loop Prevention (Rapid PVST+)

**Project Overview**

This project demonstrates the design and implementation of a resilient enterprise switching infrastructure engineered to maintain uptime during physical link failures. The lab focuses on Layer 2 redundancy, rapid convergence, and secure VLAN-based segmentation using industry-standard Cisco networking practices.

**Project Goal**

Design a high-availability campus network that minimizes downtime, prevents switching loops, and enables controlled inter-VLAN communication.

**Network Architecture & Configuration**

**Layer 2 Resiliency**
Rapid PVST+ was configured across all switches to drastically reduce convergence time during link failures. The network consistently achieved sub-3-second recovery, compared to approximately 30 seconds with traditional PVST.

**Loop Prevention & Edge Protection**
PortFast was enabled on all access ports to allow immediate host connectivity. BPDU Guard was implemented to automatically shut down misconfigured ports, preventing accidental or malicious switching loops from propagating through the network.

**VLAN Segmentation & Routing**
Multiple VLANs were created to represent separate departments within the network. Inter-VLAN communication was enabled using Router-on-a-Stick with IEEE 802.1Q trunking, ensuring efficient traffic routing while maintaining logical separation.

**Operational Outcomes**

Network downtime was minimized during simulated link failures  
Switching loops were proactively prevented at the edge  
VLAN traffic was cleanly segmented while remaining fully routable  
Enterprise switching best practices were enforced throughout the topology

**Security & Reliability Considerations**

The design enforces strict Layer 2 control, protects the switching fabric from topology instability, and aligns with real-world enterprise network standards commonly used in production environments.

**Proof of Work**

Screenshots and diagrams are available in the screenshots directory

**Skills Demonstrated**

Enterprise switching configuration  
Layer 2 redundancy and convergence optimization  
VLAN design and trunking  
Router-on-a-Stick implementation  
Network hardening and loop prevention  
Professional network documentation
