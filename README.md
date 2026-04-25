# AWS VPC Infrastructure with Terraform

## Overview
Production-ready AWS VPC infrastructure built with Terraform.
Multi-tier architecture with high availability across 2 Availability Zones.

## What I Built
This is the VPC infrastructure module I designed and implemented
as part of a team project (reviews-app).

### Files I Authored
| File | Description |
|---|---|
| `modules/vpc/vpc.tf` | VPC, Subnets, IGW, Route Tables |
| `modules/vpc/sg.tf` | Security Groups (ALB, RDS) |
| `modules/vpc/variables.tf` | Input variables |
| `modules/vpc/outputs.tf` | Output values |
| `main.tf` | VPC module call |

## Architecture
- VPC with public/private subnet separation
- Public Subnets (2 AZs) → ALB facing
- Private Subnets (2 AZs) → Application/DB tier
- Internet Gateway for public subnets
- Security Groups for ALB and RDS

## Tech Stack
- Terraform (IaC)
- AWS VPC, Subnets, IGW, Route Tables, Security Groups

## Notes
- No NAT Gateway (Free Tier optimized)
- Outputs: vpc_id, public/private subnet IDs, SG IDs
