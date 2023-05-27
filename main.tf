provider "aws" {
region = "us-west-1"
}
module "vpc" {
source = "terraform-aws-modules/vpc/aws"
name = "17vpc"
cidr = "10.0.0.0/16"

azs             = ["us-west-1a", "us-west-1b"]
public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnets = ["10.0.3.0/24"]

enable_ipv6 = true
enable_nat_gateway = false
single_nat_gateway = true
public_subnet_tags = {
Name = "Public-Subnets"
}
tags = {
Owner       = "user"
Environment = "dev"
}
vpc_tags = {
Name = "W17VPC"
}
}