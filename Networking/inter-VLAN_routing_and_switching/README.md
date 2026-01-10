## Networking Project: Inter-VLAN Routing & DHCP Integration

## Project Overview

This project demonstrates the design and implementation of a routed enterprise network that supports multiple VLANs with centralized DHCP services. The lab focuses on enabling communication between segmented networks while maintaining efficient and scalable IP address management.

## Project Goal

Provide seamless inter-VLAN communication and dynamic IP address assignment across multiple departments using industry-standard routing and DHCP techniques.

## Network Architecture & Configuration

## VLAN Segmentation

Multiple VLANs were created to logically separate departments within the network, reducing broadcast traffic and improving overall network organization.

## Inter-VLAN Routing

Router-on-a-Stick was implemented using IEEE 802.1Q trunking to enable communication between VLANs through a single routed interface.

## DHCP Services & Relay

A DHCP server was configured to dynamically assign IP addresses. IP helper addresses were implemented on router interfaces to relay DHCP requests from remote VLANs to the DHCP server.

## End-Device Verification

Client devices were configured to obtain IP addresses automatically and were tested to confirm correct addressing, gateway assignment, and inter-VLAN connectivity.

## Proof of Work

Screenshots in the screenshots directory include:
Network topology diagrams  
DHCP configuration and relay setup  
Inter-VLAN routing verification  
End-device IP configuration and testing  

## Skills Demonstrated

VLAN design and segmentation  
Inter-VLAN routing (Router-on-a-Stick)  
DHCP server and relay configuration  
Enterprise network troubleshooting  
Logical network design documentation
