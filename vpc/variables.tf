# Hyun Soo Kim
#------------------------------------------------------
# [1]. Variables for VPC
#------------------------------------------------------

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the Team2 VPC (e.g., 10.10.0.0/16)."
}

variable "public_subnet_a_cidr" {
  type        = string
  description = "CIDR block for public subnet A (us-east-1a)."
}

variable "public_subnet_b_cidr" {
  type        = string
  description = "CIDR block for public subnet B (us-east-1b)."
}

variable "private_subnet_a_cidr" {
  type        = string
  description = "CIDR block for private subnet A (us-east-1a)."
}

variable "private_subnet_b_cidr" {
  type        = string
  description = "CIDR block for private subnet B (us-east-1b)."
}

variable "availability_zone_a" {
  type        = string
  description = "Availability Zone for subnet A (e.g., us-east-1a)."
}

variable "availability_zone_b" {
  type        = string
  description = "Availability Zone for subnet B (e.g., us-east-1b)."
}

#------------------------------------------------------
# [2]. Variables for Security Group
#------------------------------------------------------

variable "alb_sg_name" {
  type        = string
  description = "ALB Security Group name."
}

variable "alb_sg_tag_name" {
  type        = string
  description = "ALB Security Group Name tag value."
}

variable "alb_ingress_cidr_blocks" {
  type        = list(string)
  description = "CIDR blocks allowed to access ALB (HTTP/HTTPS)."
}

variable "rds_sg_name" {
  type        = string
  description = "RDS Security Group name."
}

variable "rds_sg_tag_name" {
  type        = string
  description = "RDS Security Group Name tag value."
}
