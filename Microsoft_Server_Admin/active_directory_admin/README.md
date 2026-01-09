# Microsoft Administration: Hybrid Cloud Identity & Storage Architecture

## Project Overview
This project demonstrates the design and administration of a hybrid enterprise identity and storage environment using Microsoft Azure and Windows Server. The focus is on secure user management, access control, and fault-tolerant storage solutions commonly used in corporate IT infrastructures.

The lab emphasizes real-world administrative workflows, combining graphical tools and automation to manage users, permissions, and storage at scale.

## Project Goals
- Design a structured Active Directory environment using enterprise best practices
- Enforce the Principle of Least Privilege through role-based access control
- Manage directory objects using both GUI and PowerShell
- Implement fault-tolerant and high-availability storage solutions
- Demonstrate foundational hybrid cloud administration concepts using Azure

## Identity and Access Management
Active Directory was deployed within an Azure-hosted Windows Server environment. Custom Organizational Units (OUs) were created to logically separate users, groups, and administrative roles. Security groups were configured and permissions were assigned at the group level to enforce least-privilege access and simplify administration.

## Directory Administration
Active Directory objects were managed using:
- Active Directory Users and Computers (ADUC)
- PowerShell cmdlets such as New-ADUser and New-ADGroup

PowerShell was used to demonstrate automation, consistency, and scalability in user and group management.

## Storage Architecture
Windows dynamic disks were configured to implement advanced storage solutions, including:
- RAID-5 for fault tolerance and efficient disk utilization
- Mirrored volumes for redundancy and data protection
- Striped volumes for improved performance

Disk configurations were validated to ensure proper redundancy and availability.

## Security and Operational Considerations
Centralized identity management reduces misconfiguration risk and administrative overhead. Group-based permission assignment improves auditability and scalability, while fault-tolerant storage designs protect against hardware failure and improve service availability.

## Proof of Work
Supporting screenshots and/or diagrams are included in the screenshots directory

## Skills Demonstrated
Cloud Identity Management (Azure and Active Directory)
Role-Based Access Control (RBAC)
Active Directory design and administration
PowerShell automation for identity management
Windows Server storage management
High-availability and fault-tolerant storage design
Enterprise access control best practices
Hybrid cloud infrastructure fundamentals
