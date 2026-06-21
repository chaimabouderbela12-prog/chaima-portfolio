# Intelligent Intrusion Detection and Prevention System (IDPS)

## Overview

This project consists of the design and development of an Intelligent Intrusion Detection and Prevention System (IDPS) implemented in Python.

The system monitors network traffic in real time, detects suspicious activities and cyberattacks, generates security alerts, and provides prevention mechanisms through IP blacklisting. To improve detection capabilities, Machine Learning techniques are integrated to identify malicious behavior and unknown attack patterns.

The project combines network monitoring, security analytics, automated alerting, and machine learning to provide a comprehensive cybersecurity solution.

## Objectives

* Monitor network traffic in real time.
* Detect common network attacks.
* Generate alerts for suspicious activities.
* Manage malicious IP addresses through blacklisting.
* Store and export security logs.
* Integrate Machine Learning for anomaly detection.
* Provide a user-friendly graphical interface for administrators.

## Main Features

### Network Monitoring

* Real-time packet capture using Scapy
* Continuous traffic analysis
* Multi-threaded packet processing
* Live traffic visualization

### Traffic Analysis

The system analyzes:

* Source and destination IP addresses
* Source and destination ports
* Protocol information
* TCP flags
* Packet size and timestamps

Supported protocols include:

* TCP
* UDP
* ARP
* DNS

### Intrusion Detection

The IDPS detects suspicious activities such as:

* SYN Flood attacks
* Port Scanning
* UDP Flood attacks
* Network anomalies
* Suspicious traffic patterns

### Alert Management

Detected attacks generate:

* Visual alerts
* Severity levels
* Attack classification
* Detailed incident information

### Log Management

The system records security events and provides:

* Event history
* Log filtering
* Attack tracking
* Security auditing

Logs can be exported in:

* CSV
* TXT
* JSON

### Blacklist Management

Administrators can:

* Block malicious IP addresses
* Remove blocked IPs
* Track blocked hosts
* Apply prevention actions automatically

### Machine Learning Module

The project integrates Machine Learning algorithms for attack detection and traffic classification.

Implemented capabilities include:

* Model training
* Model updating
* Feature extraction
* Real-time prediction

Algorithms used:

* Random Forest
* Support Vector Machine (SVM)

### Dashboard and Statistics

The system provides:

* Real-time traffic visualization
* Attack statistics
* Detection metrics
* Top suspicious IP addresses
* System performance monitoring

## System Architecture

The solution is composed of:

1. Packet Capture Layer
2. Traffic Analysis Engine
3. Intrusion Detection Engine
4. Prevention Module
5. Machine Learning Module
6. Logging and Reporting System
7. Graphical User Interface (GUI)

## Technologies Used

* Python
* Scapy
* Tkinter
* Scikit-learn
* Random Forest
* Support Vector Machine (SVM)
* CSV / JSON Logging

## Key Achievements

* Developed a real-time network monitoring solution.
* Implemented intrusion detection and prevention mechanisms.
* Integrated Machine Learning for intelligent threat detection.
* Built a graphical interface for security monitoring.
* Automated alert generation and log management.

## Learning Outcomes

* Network traffic analysis
* Intrusion Detection Systems (IDS)
* Intrusion Prevention Systems (IPS)
* Python cybersecurity development
* Machine Learning for cybersecurity
* Security monitoring and alerting
* Threat detection and incident response
