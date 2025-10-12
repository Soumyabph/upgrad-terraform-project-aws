provider "aws" {
  region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket         = "awss3terraformproject"
    key            = "project/vpc/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}

module "vpc" {
  source        = "../../modules/vpc"
  vpc_name      = "project-vpc"
  cidr_block    = "10.0.0.0/16"
  public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets= ["10.0.3.0/24", "10.0.4.0/24"]
  enable_nat_gateway       = true
  nat_gateway_public_subnet_index = 0
}
