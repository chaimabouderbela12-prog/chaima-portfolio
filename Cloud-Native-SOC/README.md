# Cloud-Native SOC Platform

## Overview

This project focuses on the design and deployment of a cloud-native Security Operations Center (SOC) capable of collecting, analyzing, correlating, and responding to security events from multiple sources in real time.

The platform integrates SIEM, Threat Intelligence, Intrusion Detection, Security Orchestration, and Machine Learning technologies to provide enhanced threat detection and incident response capabilities.

## Objectives

* Centralize security logs from multiple environments.
* Detect and investigate security incidents in real time.
* Integrate Threat Intelligence feeds for alert enrichment.
* Automate incident response workflows.
* Detect anomalous activities using Machine Learning.
* Improve visibility across cloud, network, and endpoint infrastructures.

## Architecture

The solution is built around five core components:

### Log Collection

Security events are collected from multiple sources, including:

* Windows Event Logs
* Linux Syslog
* Web Server Logs
* AWS CloudTrail
* Suricata IDS

Wazuh agents are deployed on monitored systems to collect and forward security events.

### Threat Intelligence Integration

The platform enriches alerts using external threat intelligence feeds:

* MISP
* VirusTotal

This enrichment provides context about malicious IP addresses, domains, file hashes, and known threats.

### Security Monitoring and Analysis

The SOC platform uses:

* Wazuh SIEM
* Elasticsearch
* Kibana Dashboards

These components enable centralized log analysis, correlation, visualization, and alert management.

### Machine Learning Detection

An Isolation Forest algorithm is implemented to identify abnormal behavior patterns within security logs.

This approach enables:

* Anomaly detection
* Detection of unknown threats
* Reduced dependence on static detection rules
* Improved identification of suspicious activities

### Automated Response

Security workflows are automated using SOAR technologies to accelerate incident response and reduce analyst workload.

## Security Features

* Real-time intrusion detection
* Threat Intelligence enrichment
* Centralized log management
* Automated alert correlation
* Machine Learning-based anomaly detection
* Security event monitoring and visualization

## Technologies Used

* Wazuh
* Suricata IDS
* MISP
* VirusTotal
* Elasticsearch
* Kibana
* AWS CloudTrail
* Python
* Isolation Forest (Machine Learning)

## Key Achievements

* Built a cloud-native SOC architecture.
* Integrated SIEM, IDS, Threat Intelligence, and Machine Learning technologies.
* Implemented automated security monitoring and alerting.
* Enhanced threat detection capabilities through behavioral analytics.
* Improved incident response efficiency through automation.

## Learning Outcomes

* Security Operations Center architecture
* SIEM deployment and management
* Threat Intelligence integration
* Intrusion Detection Systems
* Security Monitoring and Incident Response
* Machine Learning for Cybersecurity
* Cloud Security Monitoring
