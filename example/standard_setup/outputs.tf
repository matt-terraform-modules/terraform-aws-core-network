output "aws_subnet_id" {
  description = "The ID of the AWS Subnet"
  value       = module.aws_core_network.aws_subnet_id
}

output "aws_sg_id" {
  description = "The ID of the AWS Security Group"
  value       = module.aws_core_network.aws_sg_id
}

output "aws_vpc_id" {
  description = "The ID of the AWS VPC"
  value       = module.aws_core_network.aws_vpc_id
}
