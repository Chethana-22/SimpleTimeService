provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.4.0"

  name                 = var.vpc_name
  cidr                 = var.vpc_cidr
  azs                  = var.azs
  public_subnets       = var.public_subnets
  private_subnets      = var.private_subnets
  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
  }
}
