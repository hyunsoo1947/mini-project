# Hyun Soo Kim
# ALB Security Group, RDS Security Group
# EC2/Bastion Security Group is in the Bastion module, not in the VPC module

#--------------------------------------------
# [1]. ALB Security Group
#---------------------------------------------

resource "aws_security_group" "alb_sg" {
  name   = var.alb_sg_name
  vpc_id = aws_vpc.main.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.alb_ingress_cidr_blocks
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = var.alb_ingress_cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = { Name = var.alb_sg_tag_name }
}

#--------------------------------------------
# [2]. RDS Security Group
#--------------------------------------------

resource "aws_security_group" "rds_sg" {
  name   = var.rds_sg_name
  vpc_id = aws_vpc.main.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = { Name = var.rds_sg_tag_name }
}
