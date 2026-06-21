# Linux Penetration Testing Lab – Kioptrix Series

## Overview

This project presents a comprehensive penetration testing assessment conducted on four vulnerable Linux virtual machines from the Kioptrix series (Levels 1–4).

The objective was to simulate real-world security assessments by identifying vulnerabilities, exploiting misconfigurations, performing privilege escalation, and proposing remediation measures. The project followed industry-recognized penetration testing methodologies and security best practices.

The assessment was conducted in an isolated laboratory environment using Kali Linux and VMware.

## Objectives

* Perform end-to-end penetration testing on vulnerable Linux systems.
* Identify exposed services and security weaknesses.
* Exploit known vulnerabilities and misconfigurations.
* Gain unauthorized access and escalate privileges.
* Assess the impact of discovered vulnerabilities.
* Develop remediation and hardening recommendations.

## Methodology

The penetration test followed a structured six-phase methodology:

### 1. Reconnaissance

* Target discovery
* Service enumeration
* Port scanning
* Vulnerability research

### 2. Enumeration

* Service identification
* Version detection
* SMB enumeration
* Web application analysis

### 3. Vulnerability Assessment

* Configuration review
* Vulnerability identification
* Attack surface analysis

### 4. Exploitation

* Exploitation of known vulnerabilities
* Manual and automated attack techniques
* Initial system compromise

### 5. Post-Exploitation

* Privilege escalation
* Sensitive data extraction
* Persistence assessment

### 6. Reporting

* Risk evaluation
* CVSS assessment
* Remediation planning

## Target Systems

### Kioptrix Level 1

Environment:

* Red Hat Linux 7.2
* Linux Kernel 2.4.x

Activities:

* Service enumeration
* Samba vulnerability exploitation
* Initial access and post-exploitation

### Kioptrix Level 2

Environment:

* CentOS 4.5
* Linux Kernel 2.6.9

Activities:

* SQL Injection
* Command Injection
* Local privilege escalation

### Kioptrix Level 3

Environment:

* Ubuntu 8.04
* Linux Kernel 2.6.24

Activities:

* Web application assessment
* Password cracking
* Privilege escalation
* System compromise analysis

### Kioptrix Level 4

Environment:

* Ubuntu 8.04
* Samba Services

Activities:

* SQL Injection
* Restricted shell bypass
* Privilege escalation
* Credential extraction

## Tools Used

### Penetration Testing

* Kali Linux
* Metasploit Framework
* Nmap

### Enumeration

* Nmap NSE Scripts
* SMB Enumeration Tools

### Privilege Escalation

* LinPEAS
* Lynis

### Password Analysis

* John the Ripper

### Virtualization

* VMware Workstation

## Key Vulnerabilities Identified

* Outdated software versions
* Weak authentication mechanisms
* SQL Injection vulnerabilities
* Command Injection vulnerabilities
* Samba security flaws
* Privilege escalation paths
* Misconfigured services
* Insecure permissions

## Security Recommendations

* Regular patch management
* Service hardening
* Principle of least privilege
* Secure authentication policies
* Network segmentation
* Continuous vulnerability assessments
* Security monitoring and logging

## Technologies Used

* Kali Linux
* VMware
* Nmap
* Metasploit
* LinPEAS
* Lynis
* John the Ripper

## Key Achievements

* Conducted full penetration testing engagements.
* Successfully identified and exploited multiple vulnerabilities.
* Performed privilege escalation on Linux systems.
* Assessed security risks using industry methodologies.
* Developed remediation and hardening plans.
* Improved understanding of offensive security techniques.

## Learning Outcomes

* Penetration Testing Methodology (PTES)
* Vulnerability Assessment
* Linux Security
* Exploitation Techniques
* Privilege Escalation
* Security Reporting
* Risk Assessment
* System Hardening
