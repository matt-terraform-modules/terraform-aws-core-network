terraform {
  required_version = ">= 1.11.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.90.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      Project     = var.project_tag
      Owner       = var.owner_tag
      Environment = var.environment_tag
      ManagedBy   = "Terraform"
    }
  }
}

module "aws_core_network" {
  source = "../../"

  aws_core_vpc_cidr    = var.vpc_cidr
  aws_core_subnet_cidr = var.subnet_cidr
  aws_core_az          = var.aws_availability_zone
  map_public_ip        = true

  project_tag = var.project_tag
}
