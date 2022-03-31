output "aws_subnet_id" {
  description = " The ID of the AWS Subnet"
  value       = aws_subnet.aws_core_subnet.id
}

output "aws_sg_id" {
  description = "The ID of the AWS Security Group"
  value       = aws_security_group.aws_core_sg.id
}

output "aws_vpc_id" {
  description = "The ID of the AWS VPC"
  value       = aws_vpc.aws_core_vpc.id
}
