# Enterprise MPLS Network with AAA, Monitoring, DMZ and Security Services

## Overview

This project involved the design and implementation of a secure enterprise network infrastructure based on MPLS technology, centralized authentication, network monitoring, firewall high availability, and DMZ security services.

The infrastructure connects headquarters and branch offices through an MPLS backbone while providing centralized management, network supervision, secure administration, and advanced security controls.

The project integrates multiple networking and cybersecurity technologies including AAA authentication, RADIUS, SNMPv3, Syslog, NTP, Zabbix monitoring, IP SLA, Firewall High Availability (HA), DMZ services, and Intrusion Prevention Systems (IPS).

## Objectives

* Design a scalable MPLS enterprise network.
* Implement centralized authentication and authorization.
* Secure device management access.
* Deploy centralized monitoring and logging.
* Monitor network performance using IP SLA.
* Integrate firewalls and DMZ services.
* Implement network segmentation and access control.
* Improve overall network security and availability.

## Network Architecture

The infrastructure includes:

* Headquarters Routers (CE11, CE21)
* Branch Routers (CE12, CE22)
* Layer 2 and Layer 3 Switches
* AAA Server
* Zabbix Monitoring Server
* Firewall Cluster (HA Mode)
* DMZ Network
* Administrative VLAN

## AAA and Centralized Authentication

AAA services were implemented using a centralized RADIUS server.

### Authentication Methods

1. RADIUS Authentication
2. Local Authentication (Fallback)

### Features

* Centralized user authentication
* Multiple privilege levels
* Administrative access control
* Secure device management

### Technologies

* AAA
* RADIUS
* Local Database Authentication

## Secure Administrative Access

Access to network devices is restricted through Access Control Lists (ACLs).

Only authorized administrators can access:

* Routers
* Switches
* Management interfaces
* VTY lines

Authorized management hosts:

* Admin1 
* Admin2 

## Network Monitoring and Management

A centralized monitoring platform was deployed using Zabbix.

### Components

* Database Server
* Zabbix Server
* Web Interface
* Zabbix Agents

### Monitored Devices

* Routers
* Switches
* Firewalls
* Servers

### Monitoring Features

* Device availability
* Interface utilization
* System performance
* Security events
* Network health monitoring

## SNMPv3 Deployment

SNMPv3 was configured to provide secure monitoring and management.

### Features

* Authentication
* Encrypted management traffic
* Event notifications (Traps)
* OSPF monitoring
* Interface monitoring
* Configuration change monitoring

## Centralized Logging

Syslog was implemented to centralize security and operational events.

### Features

* Real-time log collection
* Security event monitoring
* Device auditing
* Incident investigation support

## NTP Synchronization

A centralized NTP server was configured to ensure accurate time synchronization across all network devices.

Benefits include:

* Consistent logging
* Accurate event correlation
* Improved monitoring accuracy

## IP SLA Monitoring

IP SLA was deployed to measure network performance between headquarters and branch sites.

### Metrics Collected

* Latency
* Jitter
* Packet Loss

### Benefits

* WAN performance monitoring
* Service quality verification
* Proactive troubleshooting

## Firewall High Availability (HA)

Two firewalls were deployed in High Availability mode.

### Objectives

* Redundancy
* Failover protection
* Business continuity
* High availability

## DMZ Implementation

A dedicated DMZ network was deployed to host public-facing services.

### DMZ Network

172.16.255.0/25

### Services Hosted

* DNS Server
* Web Server (HTTP/HTTPS)
* SMTP Server

### Security Controls

* Controlled access policies
* Network segmentation
* Traffic filtering
* Firewall inspection

## Access Control Policies

### Allowed

* Internal users can access DMZ services.
* Administrators can access DMZ using:

  * HTTP
  * HTTPS
  * SSH
  * Telnet
  * ICMP

### Restricted

* Direct communication between headquarters LANs and branch LANs is blocked.

## Intrusion Prevention System (IPS)

IPS functionality was enabled on the firewalls to provide real-time threat detection and prevention.

### Capabilities

* Attack detection
* Traffic inspection
* Threat blocking
* Security policy enforcement

## Technologies Used

* MPLS
* Cisco IOS
* OSPF
* AAA
* RADIUS
* SNMPv3
* Syslog
* NTP
* IP SLA
* Zabbix
* Firewall HA
* DMZ
* IPS

## Key Achievements

* Designed a complete enterprise network infrastructure.
* Implemented centralized authentication and authorization.
* Secured device management access.
* Deployed enterprise-grade monitoring and logging.
* Integrated firewall redundancy and DMZ services.
* Implemented network performance monitoring.
* Applied cybersecurity best practices across the infrastructure.

## Learning Outcomes

* MPLS Networking
* Enterprise Network Design
* Network Security
* AAA and RADIUS
* Network Monitoring
* Firewall Administration
* DMZ Design
* Intrusion Prevention Systems
* Network Management and Automation
