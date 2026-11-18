AWS Resilient Web Server | Auto Healing & Auto Scaling

Project Overview

The AWS Resilient Web Server** is a highly available and fault-tolerant web application infrastructure built using Amazon Web Services.

The main objective of this project is to maintain website availability by automatically replacing unhealthy EC2 instances and dynamically adjusting server capacity based on application demand.

The architecture uses an Application Load Balancer to distribute incoming traffic across multiple EC2 instances and an Auto Scaling Group to maintain application availability and scalability.

Project Objectives

- Build a highly available web application on AWS.
- Automatically replace unhealthy EC2 instances.
- Scale EC2 capacity based on workload demand.
- Distribute incoming traffic across multiple instances.
- Monitor infrastructure health and performance.
- Configure notifications for important monitoring events.
- Deploy a website using AWS cloud infrastructure.

AWS Services Used

| AWS Service | Purpose |
|---|---|
| Amazon EC2 | Hosts the web application |
| Amazon S3 | Stores website files |
| Amazon VPC | Provides isolated cloud networking |
| IAM | Manages permissions and access |
| Application Load Balancer | Distributes incoming traffic |
| Auto Scaling Group | Automatically adjusts EC2 capacity |
| Launch Template | Defines EC2 instance configuration |
| Amazon SNS | Sends monitoring notifications |
| Amazon Route 53 | Manages domain DNS routing |
| AWS CLI | Automates AWS command-line operations |

Architecture Overview

The application follows a highly available architecture:

1. Users access the website through a domain name or Load Balancer DNS endpoint.
2. Route 53 resolves the domain name to the Application Load Balancer.
3. The Application Load Balancer distributes incoming requests across healthy EC2 instances.
4. EC2 instances host the web application.
5. The Auto Scaling Group maintains the desired instance capacity and replaces unhealthy instances.
6. CloudWatch monitors infrastructure metrics and triggers configured alarms.
7. Amazon SNS delivers notifications based on configured alarm actions.
8. Amazon S3 stores website files used during deployment.

Key Features

 1. High Availability
- Multiple EC2 instances distribute application workload.
- Application Load Balancer routes traffic to healthy registered targets.
- Multiple Availability Zones can be used to improve fault tolerance.

 2. Auto Healing
- Health checks identify unhealthy instances.
- Auto Scaling can replace unhealthy EC2 instances.
- Helps maintain the desired capacity without manual intervention.

 3. Auto Scaling
- Automatically increases or decreases EC2 capacity based on configured scaling policies.
- Supports changing application workloads.
- Helps optimize infrastructure capacity.

 4. Monitoring and Notifications
- SNS sends notifications when configured alarm actions are triggered.

Project Implementation Steps

 Step 1: Create an AWS VPC
- Created a custom VPC.
- Configured public subnets.
- Attached an Internet Gateway.
- Configured route tables and internet connectivity.

 Step 2: Configure IAM
- Created IAM permissions for required AWS services.
- Configured access required for EC2 instances to interact with S3 and CloudWatch.

 Step 3: Create an S3 Bucket
- Created an S3 bucket to store website files.
- Uploaded the website HTML file.
- Configured the required permissions for application deployment.

 Step 4: Configure EC2 Launch Template
- Selected the Amazon Linux AMI.
- Configured instance type and security settings.
- Added user data to install the web server and deploy website content.
- Configured the instance startup process.

 Step 5: Configure Application Load Balancer
- Created an internet-facing Application Load Balancer.
- Configured listeners and target groups.
- Registered EC2 instances through the Auto Scaling Group.
- Configured target health checks.

 Step 6: Configure Auto Scaling Group
- Created an Auto Scaling Group using the Launch Template.
- Configured minimum, desired and maximum capacity.
- Selected multiple Availability Zones.
- Configured scaling policies and health checks.

 Step 7: Configure SNS Notifications
- Created an SNS topic.
- Configured the required notification permissions.
- Subscribed an email endpoint.
- Connected notifications to configured CloudWatch alarms.

 Step 8: Configure Route 53 (Domain Integration)
- Registered a custom domain.
- Created a Route 53 public hosted zone.
- Configured DNS nameservers.
- Connected the domain to the Application Load Balancer using an Alias A record.

 Step 9: Testing and Validation
- Verified website accessibility through the Load Balancer.
- Checked EC2 target health.
- Tested instance replacement after an unhealthy instance condition.
- Observed Auto Scaling activity.
- Verified CloudWatch metrics and SNS notifications.


Challenges and Troubleshooting

During implementation, I worked on troubleshooting:

- EC2 instance startup and user-data configuration.
- S3 access and IAM permission issues.
- Application Load Balancer target health.
- Auto Scaling Group configuration.
- SNS event notification permissions.
- DNS configuration and domain integration.

These troubleshooting activities helped me understand practical AWS infrastructure management.

 Skills Demonstrated

- AWS Cloud Infrastructure
- EC2 Instance Management
- S3 Storage
- IAM Permissions
- VPC and Networking
- Application Load Balancing
- Auto Scaling and Auto Healing
- SNS Notifications
- DNS Management
- Linux Fundamentals
- AWS CLI
- Cloud Troubleshooting

 Future Improvements

- Implement HTTPS using AWS Certificate Manager.
- Automate infrastructure provisioning using AWS CloudFormation or Terraform.
- Implement CI/CD using AWS CodePipeline or GitHub Actions.
- Add centralized application logging.
- Improve security using least-privilege IAM policies.

Conclusion

This project demonstrates how AWS services can be integrated to build a resilient, highly available and scalable web application infrastructure.

It provided practical experience in cloud infrastructure deployment, networking, monitoring, troubleshooting, automated recovery and resource scaling.

**Project Type:** AWS Cloud Infrastructure / Hands-on Project  
**Region:** Asia Pacific (Mumbai) - ap-south-1  
**Author:** Omkar Khot
