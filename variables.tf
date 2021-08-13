# VPC variables
variable "aws_core_vpc_cidr" {
  description = "VPC CIDR block for the AWS Core VPC"
  type        = string
}

variable "aws_core_vpc_enable_dns_hostnames" {
  description = "Enable DNS hostnames on the VPC"
  type        = string
  default     = "false"
}

# Subnet variables
variable "aws_core_subnet_cidr" {
  description = "CIDR block for first subnet of AWS Core network"
  type        = string
}

variable "aws_core_az" {
  description = "Availability zone for first subnet of AWS core network"
  type        = string
}

variable "map_public_ip" {
  description = "Specify true to indicate that instances launched into the subnet should be assigned a public IP address."
  type        = string
  default     = "false"
}

# General variables
variable "project_tag" {
  description = "The tag for the name/id of the project the resource is associated with. Can also be used in the name of resources."
  type        = string
}

variable "additional_public_cidrs" {
  description = "List of additional cidrs that need to be added to ingress rules. In format 1.2.3.4/32"
  type        = list(any)
}
