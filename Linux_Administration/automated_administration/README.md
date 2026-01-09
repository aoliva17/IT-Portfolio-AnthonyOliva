# Linux Administration: Automated Infrastructure & Secure Remote Access

## Project Overview
This project demonstrates the deployment and administration of a secure Linux server environment with automated maintenance, controlled network services, and hardened remote access. The lab emphasizes practical system administration techniques used in real-world infrastructure rather than isolated command execution.

The primary objective was to design and manage a Linux-based environment that prioritizes automation, reliability, and security, reflecting responsibilities commonly associated with junior system administrator and security operations roles.

# Environment
Linux virtual machines configured in a multi-VM lab environment  
One server VM providing core infrastructure services  
One or more client VMs operating within an isolated internal network  

## Project Goals
Deploy automated maintenance workflows  
Configure essential network services  
Enforce secure, role-based remote access  
Apply Linux system hardening best practices  

## Automation and Maintenance
A Bash script named backupVM.bash was developed to automate the backup of critical system files and virtual machine state data. The script generates timestamped backups to support recovery, auditing, and repeatable execution without manual intervention. This approach demonstrates Infrastructure as Code principles using Bash scripting.

## Network Services Configuration
One Linux virtual machine was configured as a DHCP server to manage IP address allocation within the internal network. IP scopes and lease behavior were defined and validated by confirming successful address assignment to client systems. This configuration demonstrates core Linux networking and service management skills.

## Secure Remote Access and Hardening
Secure Shell access was hardened by implementing key-based authentication and disabling password-based logins. Access was restricted to authorized users only, reducing the system attack surface and enforcing least-privilege access controls. These changes align with standard Linux hardening practices.

## Security and Reliability Outcomes
Weak authentication mechanisms were eliminated  
System recoverability was improved through automated backups  
Operational consistency was achieved through scripting and repeatable configuration  
The environment demonstrates secure administration of multi-VM Linux systems  

## Skills Demonstrated
Linux system administration  
Bash scripting and automation  
Infrastructure as Code principles  
Linux networking and DHCP configuration  
SSH hardening and secure remote access  
Access control and least privilege enforcement  
Backup and recovery planning  
Virtual machine infrastructure management  
Technical documentation and validation  

## Proof of Work
Supporting screenshots, configuration examples, and scripts are included in this repository to demonstrate successful implementation and verification of each component.
