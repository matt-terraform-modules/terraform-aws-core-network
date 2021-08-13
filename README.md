# AWS Basic Network
# Description 
Use this module to create a basic VPC and necessary dependencies so that you can quickly get your EC2 instances created.
The security group will create ingress rules that are open to the private network and *your* ip address.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.40.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.40.0 |
| <a name="provider_http"></a> [http](#provider\_http) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_internet_gateway.aws_core_igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_route_table.aws_core_rt](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_security_group.aws_core_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.aws_core_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.aws_core_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [http_http.my_ip_address](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_public_cidrs"></a> [additional\_public\_cidrs](#input\_additional\_public\_cidrs) | List of additional cidrs that need to be added to ingress rules. In format 1.2.3.4/32 | `list(any)` | n/a | yes |
| <a name="input_aws_core_az"></a> [aws\_core\_az](#input\_aws\_core\_az) | Availability zone for first subnet of AWS core network | `string` | n/a | yes |
| <a name="input_aws_core_subnet_cidr"></a> [aws\_core\_subnet\_cidr](#input\_aws\_core\_subnet\_cidr) | CIDR block for first subnet of AWS Core network | `string` | n/a | yes |
| <a name="input_aws_core_vpc_cidr"></a> [aws\_core\_vpc\_cidr](#input\_aws\_core\_vpc\_cidr) | VPC CIDR block for the AWS Core VPC | `string` | n/a | yes |
| <a name="input_aws_core_vpc_enable_dns_hostnames"></a> [aws\_core\_vpc\_enable\_dns\_hostnames](#input\_aws\_core\_vpc\_enable\_dns\_hostnames) | Enable DNS hostnames on the VPC | `string` | `"false"` | no |
| <a name="input_map_public_ip"></a> [map\_public\_ip](#input\_map\_public\_ip) | Specify true to indicate that instances launched into the subnet should be assigned a public IP address. | `string` | `"false"` | no |
| <a name="input_project_tag"></a> [project\_tag](#input\_project\_tag) | The tag for the name/id of the project the resource is associated with. Can also be used in the name of resources. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_sg_id"></a> [aws\_sg\_id](#output\_aws\_sg\_id) | AWS Security Group ID |
| <a name="output_aws_subnet_id"></a> [aws\_subnet\_id](#output\_aws\_subnet\_id) | AWS Subnet ID |
| <a name="output_aws_vpc_id"></a> [aws\_vpc\_id](#output\_aws\_vpc\_id) | AWS VPC ID |
