# standard_setup
# Description
Example code to use the module.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.40.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws_core_network"></a> [aws\_core\_network](#module\_aws\_core\_network) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_cidrs"></a> [additional\_cidrs](#input\_additional\_cidrs) | List of additional cidrs that need to be added to ingress rules. In format 1.2.3.4/32 | `list(any)` | <pre>[<br>  "212.250.145.34/32"<br>]</pre> | no |
| <a name="input_aws_availability_zone"></a> [aws\_availability\_zone](#input\_aws\_availability\_zone) | The availability zone within the provider region the resources will be running, e.g. eu-west-1a and ap-southeast-1b | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS region to use | `string` | n/a | yes |
| <a name="input_environment_tag"></a> [environment\_tag](#input\_environment\_tag) | Environment tag applied to all resources | `string` | `"DEV"` | no |
| <a name="input_owner_tag"></a> [owner\_tag](#input\_owner\_tag) | Owner tag applied to all resources | `string` | n/a | yes |
| <a name="input_project_tag"></a> [project\_tag](#input\_project\_tag) | The tag for the name/id of the project the resource is associated with. Can also be used in the name of resources | `string` | n/a | yes |
| <a name="input_subnet_cidr"></a> [subnet\_cidr](#input\_subnet\_cidr) | The cidr block range of IP addresses for the subnet | `string` | `"192.0.0.0/24"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | The cidr block range of IP addresses for the virtual private cloud | `string` | `"192.0.0.0/16"` | no |

## Outputs

No outputs.
