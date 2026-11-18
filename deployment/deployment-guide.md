AWS Resilient Web Server – Deployment Guide

1. Prerequisites

- AWS account
- Basic Linux knowledge
- AWS Management Console access
- Amazon Linux AMI
- Required IAM roles and permissions

2. Infrastructure Setup

 VPC and Networking
- Create a custom VPC.
- Create public subnets in multiple Availability Zones.
- Attach an Internet Gateway.
- Configure route tables.

 Storage and Permissions
- Create an S3 bucket.
- Upload website files.
- Configure an IAM role with the required permissions.

 Compute Configuration
- Create an EC2 Launch Template.
- Configure instance type, security groups and IAM instance profile.
- Configure the User Data startup script.

 Load Balancing
- Create an internet-facing Application Load Balancer.
- Create a Target Group.
- Configure listeners and health checks.

 Auto Scaling
- Create an Auto Scaling Group.
- Attach the Launch Template.
- Configure minimum, desired and maximum capacity.
- Configure scaling policies.

 Monitoring
- Create an SNS topic and email subscription.

 Domain Configuration
- Register a domain.
- Configure Route 53 DNS records.
- Point the domain to the Application Load Balancer.

3. Validation

Verify:
- Website accessibility.
- EC2 instance health.
- Load Balancer target health.
- Auto Scaling activity.
- SNS notification delivery.

4. Expected Outcome

A web application hosted on AWS with load balancing, automatic instance replacement, configurable scaling and infrastructure monitoring.

