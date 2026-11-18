This file contains the actual User Data script used when creating EC2 Launch Template.

#!/bin/bash

yum update -y   (# Update system packages)
yum install httpd awscli -y  (# Install Apache web server)

aws s3 cp s3://awsprojectfinal002/index.html /var/www/html/index.html  (# Deploy website from S3)

systemctl enable httpd    (# Start Apache)
systemctl start httpd
