variable "aws_core_vpc_cidr" {
  description = "VPC CIDR block for the AWS Core VPC"
  type        = string
}

variable "aws_core_subnet_cidr1" {
  description = "CIDR block for first subnet of AWS Core network"
  type        = string
}

variable "owner_tag" {
  description = "Value that will be tagged as OWNER, on all AWS resources"
  type        = string
}

variable "environment_tag" {
  description = "Value that will be tagged as ENVIRONMENT, on all AWS resources"
  type        = string
}

variable "prefix_tag" {
  description = "Prefix string added to Name tag"
  type        = string
}

variable "aws_core_az_1" {
  description = "Availability zone for first subnet of AWS core network"
  type        = string
}

variable "additional_public_cidrs" {
  description = "List of additional cidrs that need to be added to ingress rules. In format 1.2.3.4/32"
  type        = list(any)
}

variable "aws_core_vpc_enable_dns_hostnames" {
  description = "Enable DNS hostnames on the VPC"
  type        = string
  default     = "false"
}

variable "map_public_ip" {
  description = "Specify true to indicate that instances launched into the subnet should be assigned a public IP address."
  type        = string
  default     = "false"
}