## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eks_cluster.eks](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster) | resource |
| [aws_eks_node_group.nodes_general](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group) | resource |
| [aws_iam_role.eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.nodes_general](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.amazon_ec2_container_registry_read_only](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.amazon_eks_cluster_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.amazon_eks_cni_policy_general](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.amazon_eks_worker_node_policy_general](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_security_group.my-alb-sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_eks_cluster_auth.token](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_type"></a> [ami\_type](#input\_ami\_type) | Type of Amazon Machine Image (AMI) associated with the EKS Node Group. | `string` | n/a | yes |
| <a name="input_capacity_type"></a> [capacity\_type](#input\_capacity\_type) | Type of capacity associated with the EKS Node Group. | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of the EKS Cluster. | `string` | n/a | yes |
| <a name="input_desired_size"></a> [desired\_size](#input\_desired\_size) | Desired number of worker nodes. | `number` | n/a | yes |
| <a name="input_disk_size"></a> [disk\_size](#input\_disk\_size) | Disk size in GiB for worker nodes. | `number` | n/a | yes |
| <a name="input_eks_name"></a> [eks\_name](#input\_eks\_name) | Name of the cluster. | `string` | n/a | yes |
| <a name="input_eks_version"></a> [eks\_version](#input\_eks\_version) | Desired Kubernetes master version. | `string` | n/a | yes |
| <a name="input_endpoint_private_access"></a> [endpoint\_private\_access](#input\_endpoint\_private\_access) | Whether the Amazon EKS private API server endpoint is enabled. | `bool` | n/a | yes |
| <a name="input_endpoint_public_access"></a> [endpoint\_public\_access](#input\_endpoint\_public\_access) | Whether the Amazon EKS public API server endpoint is enabled. | `bool` | n/a | yes |
| <a name="input_force_update_version"></a> [force\_update\_version](#input\_force\_update\_version) | Force version update if existing pods are unable to be drained due to a pod disruption budget issue. | `bool` | n/a | yes |
| <a name="input_inbound_all"></a> [inbound\_all](#input\_inbound\_all) | n/a | <pre>list(object({<br>    port        = number<br>    protocol    = string<br>    cidr_blocks = list(string)<br>  }))</pre> | n/a | yes |
| <a name="input_instance_types"></a> [instance\_types](#input\_instance\_types) | List of instance types associated with the EKS Node Group. | `list(any)` | n/a | yes |
| <a name="input_max_size"></a> [max\_size](#input\_max\_size) | Maximum number of worker nodes. | `number` | n/a | yes |
| <a name="input_min_size"></a> [min\_size](#input\_min\_size) | Minimum number of worker nodes. | `number` | n/a | yes |
| <a name="input_node_group_name"></a> [node\_group\_name](#input\_node\_group\_name) | Name of the EKS Node Group. | `string` | n/a | yes |
| <a name="input_node_subnets"></a> [node\_subnets](#input\_node\_subnets) | Identifiers of EC2 Subnets to associate with the EKS Node Group. These subnets must have the following resource tag: kubernetes.io/cluster/CLUSTER\_NAME (where CLUSTER\_NAME is replaced with the name of the EKS Cluster). | `list(any)` | n/a | yes |
| <a name="input_outbound_all"></a> [outbound\_all](#input\_outbound\_all) | n/a | <pre>list(object({<br>    port = number<br>    protocol    = string<br>    cidr_blocks = list(string)<br>  }))</pre> | n/a | yes |
| <a name="input_security_tags"></a> [security\_tags](#input\_security\_tags) | List of security group IDs for the cross-account elastic network interfaces that Amazon EKS creates to use to allow communication between your worker nodes and the Kubernetes control plane. | `any` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of subnet IDs. | `list(any)` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cacert"></a> [cacert](#output\_cacert) | n/a |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | n/a |
| <a name="output_token"></a> [token](#output\_token) | n/a |
