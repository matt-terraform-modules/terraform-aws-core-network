terraform {
  required_version = ">= 0.12.0"
}

provider "aws" {
  region = var.aws_region
}

# Test code
module "aws_basic_network" {
  source = "../"

  aws_core_vpc_cidr       = var.vpc_cidr
  aws_core_subnet_cidr1   = var.subnet_cidr
  aws_core_az_1           = var.aws_availability_zone
  additional_public_cidrs = var.additional_cidrs
  map_public_ip           = true

  owner_tag       = var.owner_tag
  environment_tag = var.environment_tag
  prefix_tag      = var.prefix_tag
}

### Variable section
# Network variables
variable "aws_region" {
  description = "The region the AWS provider in which the resources will be running, e.g. eu-west-1 and ap-southeast-1 respectively"
  type        = string
}

variable "vpc_cidr" {
  description = "The cidr block range of IP addresses for the virtual private cloud"
  type        = string
  default     = "192.0.0.0/16"
}

variable "subnet_cidr" {
  description = "The cidr block range of IP addresses for the subnet"
  type        = string
  default     = "192.0.0.0/24"
}

variable "aws_availability_zone" {
  description = "The availability zone within the provider region the resources will be running, e.g. eu-west-1a and ap-southeast-1b"
  type        = string
}

variable "additional_cidrs" {
  description = "List of additional cidrs that need to be added to ingress rules. In format 1.2.3.4/32"
  type        = list(any)
  default     = ["212.250.145.34/32"]
}

# General variables
variable "environment_tag" {
  description = "Value that will be tagged as ENVIRONMENT, on all AWS resources"
  type        = string
}

variable "owner_tag" {
  description = "Value that will be tagged as OWNER, on all AWS resources"
  type        = string
}

variable "prefix_tag" {
  description = "Prefix string added to Name tag"
  type        = string
}
