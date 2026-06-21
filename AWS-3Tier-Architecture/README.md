# AWS Secure 3-Tier Architecture

## Overview

This project focuses on the design and deployment of a secure, scalable, and highly available 3-tier web application architecture on Amazon Web Services (AWS).

The infrastructure is distributed across multiple Availability Zones (AZs) to ensure fault tolerance, high availability, and business continuity. The solution follows cloud security best practices by isolating resources within a Virtual Private Cloud (VPC) and separating the presentation, application, and database layers.

## Objectives

* Design a secure cloud infrastructure on AWS.
* Implement a highly available 3-tier architecture.
* Apply network segmentation and security controls.
* Ensure scalability through Auto Scaling Groups.
* Provide database redundancy and failover capabilities.
* Monitor system performance and security events.

## Architecture Components

### Network Layer

* Amazon VPC
* Public Subnets
* Private Application Subnets
* Private Database Subnets
* Internet Gateway
* Route Tables

### Presentation Tier

* Amazon CloudFront
* Amazon Route 53
* Application Load Balancer (ALB)
* Auto Scaling Group

### Application Tier

* EC2 Instances
* Private Subnets
* Security Groups
* Auto Scaling

### Data Tier

* Amazon RDS MySQL
* Multi-AZ Deployment
* Automated Failover
* Private Database Subnets

### Monitoring and Logging

* Amazon CloudWatch
* CloudWatch Alarms
* Performance Monitoring

## Security Features

* Network isolation using Amazon VPC
* Separation of public and private resources
* Restricted Security Groups
* Private database deployment
* HTTPS encryption through CloudFront
* Continuous monitoring with CloudWatch

## High Availability

The architecture ensures high availability through:

* Multi-AZ deployment
* Application Load Balancer
* Auto Scaling Groups
* RDS Multi-AZ configuration
* Automatic database replication and failover

## Technologies Used

* AWS VPC
* EC2
* Auto Scaling Groups
* Application Load Balancer
* Route 53
* CloudFront
* Amazon RDS (MySQL)
* CloudWatch

## Key Learning Outcomes

* Cloud infrastructure design
* AWS networking and security
* High availability architecture
* Scalability and load balancing
* Database redundancy and disaster recovery
* Cloud monitoring and observability
