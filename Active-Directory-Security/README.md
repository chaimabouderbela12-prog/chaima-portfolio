# Active Directory Administration and Security

## Overview

This project focuses on the deployment, administration, and security hardening of a Microsoft Active Directory environment using Windows Server 2019 and Windows 10.

The project covers domain deployment, user and organizational unit management, Group Policy implementation, DHCP configuration, backup and recovery procedures, Windows Firewall management, and Active Directory security concepts.

The objective was to simulate a real enterprise environment and apply administrative and security best practices.

## Objectives

* Deploy and configure an Active Directory domain.
* Manage users, groups, and organizational units.
* Implement security policies using Group Policy Objects (GPOs).
* Configure and manage DHCP services.
* Implement backup and recovery mechanisms.
* Secure Windows systems through firewall policies.
* Understand common Active Directory attack vectors and defenses.

## Environment Setup

### Infrastructure

* Windows Server 2019 (Domain Controller)
* Windows 10 Client
* Active Directory Domain Services (AD DS)

### Domain Configuration

* Creation of the domain:

  * test.local
* Domain Controller deployment
* Client workstation integration into the domain

## Active Directory Management

### Organizational Units (OUs)

The following Organizational Units were created:

* IT Department
* Human Resources
* Administration
* Student/Class Organization

### User Management

* User account creation
* Password policy configuration
* Forced password change at first login
* Non-expiring password configuration
* User authentication testing

### Group Management

* Creation of security groups
* Privilege assignment
* Domain administration delegation

## Group Policy Management (GPO)

Several security policies were implemented using Group Policy Objects.

### User Restrictions

* Disable Command Prompt (CMD)
* Disable PowerShell
* Disable Registry Editor
* Disable Control Panel access

### Password Policies

* Minimum password length: 12 characters
* Maximum password age: 60 days

### Security Policies

* Disable local administrator account
* Configure audit policies
* Configure session timeout
* Screen saver lock after inactivity

### User Environment Restrictions

* Lock taskbar settings
* Disable shutdown/restart options
* Restrict network configuration access

## DHCP Configuration

The DHCP role was deployed and configured to automate IP address assignment.

### Features Implemented

* IPv4 address pool creation
* Address exclusion ranges
* DHCP lease configuration
* Default gateway distribution
* DNS domain distribution
* DHCP reservations based on MAC addresses

## Backup and Recovery

Windows Server Backup was configured to ensure data protection.

### Activities

* Backup configuration
* File recovery testing
* Data restoration validation

### Benefits

* Business continuity
* Data recovery capability
* Backup management experience

## Windows Firewall Security

Security rules were implemented to control network communications.

### Rules Created

* Block ICMP traffic
* Block FTP traffic
* Block Telnet traffic
* Restrict application access
* Export and import firewall policies

## Active Directory Security

The project also explored Active Directory security concepts and common attack techniques.

### Topics Covered

* Active Directory attack surface
* Privilege abuse risks
* Account security
* Domain hardening
* Security auditing

## Technologies Used

* Windows Server 2019
* Windows 10
* Active Directory Domain Services
* Group Policy Management
* DHCP Server
* Windows Firewall
* Windows Server Backup

## Key Achievements

* Successfully deployed a complete Active Directory infrastructure.
* Implemented security-focused Group Policies.
* Configured DHCP services and network management.
* Applied Windows hardening techniques.
* Practiced backup, recovery, and firewall administration.
* Strengthened understanding of Active Directory security.

## Learning Outcomes

* Active Directory Administration
* Windows Server Management
* Identity and Access Management (IAM)
* Group Policy Configuration
* Network Services Administration
* Windows Security Hardening
* Enterprise Infrastructure Management
