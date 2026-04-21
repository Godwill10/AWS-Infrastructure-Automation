# Terraform AWS Infrastructure

## Overview
This project provisions AWS infrastructure using Terraform.

## Resources Created
- VPC
- 2 Public Subnets (2 AZs)
- 2 Private Subnets (2 AZs)
- Internet Gateway
- Route Tables
- 2 EC2 Instances (Web Servers)
- RDS MySQL Database (Private Subnets)

## Security
- Web SG: Allows HTTP (port 80) from anywhere
- RDS SG: Allows MySQL (3306) only from Web SG

## Variables
- instance1_name
- instance2_name

## Outputs
- EC2 Public IPs
- RDS Endpoint

## How to Run
terraform init
terraform apply

## Cleanup
terraform destroy