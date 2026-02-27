# mini-project
mini project 03/02/2026
1. VPC
CIDR: var.vpc_cidr
Name: team2-vpc

2. Internet Gateway
Attached to VPC
Used only for Public Subnets
Name: team2-igw

3. Route Tables
 - Public Route Table
   0.0.0.0/0 → Internet Gateway
   Associated with:
                public_a
                public_b

  - Private Route Table
    No default internet route (No NAT Gateway per project requirement)
    Associated with:
                private_a
                private_b

4️. Subnets
 - Public (2 AZs)
              public_a (us-east-1a)
              public_b (us-east-1b)
 - Private (2 AZs)
              private_a (us-east-1a)
              private_b (us-east-1b)

5. Basic Security Groups
🔹 ALB Security Group (8번)
    Name: team2-alb-sg
    Ingress:
     80 from 0.0.0.0/0
     (Optional: 443 if TLS ticket adds ACM later)
    Egress:
      All traffic allowed

🔹 RDS Security Group
    Name: team2-rds-sg
    Currently minimal (rules to be refined in RDS ticket)

🔎 Notes

No NAT Gateway (staying under Free Tier)
All resources created via Terraform module
Outputs will include:
                 vpc_id
                 public_subnet_ids
                 private_subnet_ids

alb_sg_id

rds_sg_id
