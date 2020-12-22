output "aws_subnet_id" {
  description = "AWS Subnet ID"
  value       = aws_subnet.aws_core_subnet1.id
}

output "aws_sg_id" {
  description = "AWS Default Security Group ID"
  value       = aws_security_group.aws_core_sg.id
}

output "aws_vpc_id" {
  description = "AWS VPC ID"
  value       = aws_vpc.aws_core_vpc.id
}