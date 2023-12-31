## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_default_route_table.route_table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_route_table) | resource |
| [aws_eip.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_eip.nat_eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_instance.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_internet_gateway.igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.nat](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route_table.public_route_table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.private_assoc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public_assoc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.bastion_host](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.private_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [random_shuffle.az_list](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/shuffle) | resource |
| [aws_ami.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | AMI to use for the instance. Setting this will ignore `ami_filter` and `ami_owners`. | `string` | `null` | no |
| <a name="input_ami_filter"></a> [ami\_filter](#input\_ami\_filter) | List of maps used to create the AMI filter for the action runner AMI. | `map(list(string))` | <pre>{<br>  "name": [<br>    "amzn2-ami-hvm-2.*-x86_64-ebs"<br>  ]<br>}</pre> | no |
| <a name="input_ami_owners"></a> [ami\_owners](#input\_ami\_owners) | The list of owners used to select the AMI of action runner instances. | `list(string)` | <pre>[<br>  "amazon"<br>]</pre> | no |
| <a name="input_assign_eip_address"></a> [assign\_eip\_address](#input\_assign\_eip\_address) | Assign an Elastic IP address to the instance | `bool` | `true` | no |
| <a name="input_associate_public_ip_address"></a> [associate\_public\_ip\_address](#input\_associate\_public\_ip\_address) | Whether to associate a public IP to the instance. | `bool` | `false` | no |
| <a name="input_disable_api_termination"></a> [disable\_api\_termination](#input\_disable\_api\_termination) | Enable EC2 Instance Termination Protection | `bool` | `false` | no |
| <a name="input_ebs_block_device_volume_size"></a> [ebs\_block\_device\_volume\_size](#input\_ebs\_block\_device\_volume\_size) | The volume size (in GiB) to provision for the EBS block device. Creation skipped if size is 0 | `number` | `0` | no |
| <a name="input_env"></a> [env](#input\_env) | The name of environment: dev, stage, prod | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Bastion instance type | `string` | `"t2.micro"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Key name | `string` | `""` | no |
| <a name="input_max_subnets"></a> [max\_subnets](#input\_max\_subnets) | ======================== subnets.tf/variables =========================== | `number` | n/a | yes |
| <a name="input_metadata_http_endpoint_enabled"></a> [metadata\_http\_endpoint\_enabled](#input\_metadata\_http\_endpoint\_enabled) | Whether the metadata service is available | `bool` | `true` | no |
| <a name="input_metadata_http_put_response_hop_limit"></a> [metadata\_http\_put\_response\_hop\_limit](#input\_metadata\_http\_put\_response\_hop\_limit) | The desired HTTP PUT response hop limit (between 1 and 64) for instance metadata requests. | `number` | `1` | no |
| <a name="input_metadata_http_tokens_required"></a> [metadata\_http\_tokens\_required](#input\_metadata\_http\_tokens\_required) | Whether or not the metadata service requires session tokens, also referred to as Instance Metadata Service Version 2. | `bool` | `true` | no |
| <a name="input_monitoring"></a> [monitoring](#input\_monitoring) | Launched EC2 instance will have detailed monitoring enabled | `bool` | `true` | no |
| <a name="input_private_cidrs"></a> [private\_cidrs](#input\_private\_cidrs) | The cidr range of the public subnet | `any` | n/a | yes |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | The numbet of public subnets to be created | `number` | n/a | yes |
| <a name="input_public_cidrs"></a> [public\_cidrs](#input\_public\_cidrs) | The cidr range of the public subnet | `any` | n/a | yes |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | The numbet of public subnets to be created | `number` | n/a | yes |
| <a name="input_root_block_device_encrypted"></a> [root\_block\_device\_encrypted](#input\_root\_block\_device\_encrypted) | Whether to encrypt the root block device | `bool` | `true` | no |
| <a name="input_root_block_device_volume_size"></a> [root\_block\_device\_volume\_size](#input\_root\_block\_device\_volume\_size) | The volume size (in GiB) to provision for the root block device. It cannot be smaller than the AMI it refers to. | `number` | `8` | no |
| <a name="input_vpc_cidr_block"></a> [vpc\_cidr\_block](#input\_vpc\_cidr\_block) | cidr range of the VPC | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | n/a |
| <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |
