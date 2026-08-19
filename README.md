# AWS Infrastructure Automation with Terraform

A portfolio infrastructure-as-code project that provisions a two-tier AWS environment across two Availability Zones.

## Architecture

- One VPC with two public and two private subnets
- An internet gateway and public route table
- Two EC2 web servers, distributed across Availability Zones
- A private Amazon RDS for MySQL instance
- Security groups that allow HTTP to the web tier and MySQL only from the web tier
- Encrypted database storage and Terraform outputs for service endpoints

## Why this project matters

This repository demonstrates repeatable cloud provisioning, network segmentation, least-privilege service access, multi-AZ resource placement, variables, sensitive inputs, and infrastructure teardown.

## Prerequisites

- Terraform
- AWS CLI
- An AWS account with credentials configured

## Deploy

```bash
terraform init
terraform fmt -check
terraform validate
export TF_VAR_db_password='use-a-strong-password'
terraform plan
terraform apply
```

Terraform prompts for confirmation before it creates resources. The EC2 public IP addresses and RDS endpoint are shown as outputs after a successful apply.

## Configuration

| Variable | Purpose | Sensitive |
| --- | --- | --- |
| `instance1_name` | Name tag for the first EC2 instance | No |
| `instance2_name` | Name tag for the second EC2 instance | No |
| `db_username` | RDS administrator username | No |
| `db_password` | RDS administrator password | Yes |

Do not commit real passwords, AWS credentials, Terraform state, or local variable files.

## Clean up

AWS resources can incur charges. Remove the stack when you are finished:

```bash
terraform destroy
```

## Security notes

- The database is not publicly accessible.
- MySQL traffic is accepted only from the web security group.
- The database password is supplied at runtime and marked sensitive.
- For production use, store database credentials in AWS Secrets Manager and use a current region-specific AMI lookup instead of a fixed AMI ID.

## Author

Godwill Afolabi
