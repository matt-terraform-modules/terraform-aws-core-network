terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.40.0"
    }
  }
}

data "http" "my_ip_address" {
  url = "http://ipv4.icanhazip.com"
}

#backup alternative
data "http" "my_ip_address_2" {
  url = "https://ipv4.wtfismyip.com/text"
}

resource "aws_vpc" "aws_core_vpc" {
  cidr_block           = var.aws_core_vpc_cidr
  enable_dns_hostnames = var.aws_core_vpc_enable_dns_hostnames

  tags = {
    Name = "${var.project_tag}_VPC"
  }
}

resource "aws_subnet" "aws_core_subnet" {
  vpc_id                  = aws_vpc.aws_core_vpc.id
  cidr_block              = var.aws_core_subnet_cidr
  availability_zone       = var.aws_core_az
  map_public_ip_on_launch = var.map_public_ip

  tags = {
    Name = "${var.project_tag}_SUBNET"
  }
}

resource "aws_internet_gateway" "aws_core_igw" {
  vpc_id = aws_vpc.aws_core_vpc.id

  tags = {
    Name = "${var.project_tag}_IGW"
  }
}

resource "aws_main_route_table_association" "aws_core_rta" {
  vpc_id         = aws_vpc.aws_core_vpc.id
  route_table_id = aws_route_table.aws_core_rt.id
}

resource "aws_route_table" "aws_core_rt" {
  vpc_id = aws_vpc.aws_core_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.aws_core_igw.id
  }

  tags = {
    Name = "${var.project_tag}_RT"
  }
}

resource "aws_security_group" "aws_core_sg" {
  name   = "${var.project_tag}_SG"
  vpc_id = aws_vpc.aws_core_vpc.id

  ingress {
    protocol    = "-1"
    self        = false
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["${chomp(data.http.my_ip_address.body)}/32"]
  }

  ingress {
    protocol    = "-1"
    self        = false
    from_port   = 0
    to_port     = 0
    cidr_blocks = [var.aws_core_vpc_cidr]
  }

  ingress {
    protocol    = "-1"
    self        = false
    from_port   = 0
    to_port     = 0
    cidr_blocks = var.additional_public_cidrs
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
