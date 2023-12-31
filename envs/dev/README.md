## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.44.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_db"></a> [db](#module\_db) | ../../modules/aws_rds | n/a |
| <a name="module_eks"></a> [eks](#module\_eks) | ../../modules/eks | n/a |
| <a name="module_networking"></a> [networking](#module\_networking) | ../../modules/network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_type"></a> [ami\_type](#input\_ami\_type) | Type of Amazon Machine Image (AMI) associated with the EKS Node Group. | `any` | n/a | yes |
| <a name="input_associate_public_ip_address"></a> [associate\_public\_ip\_address](#input\_associate\_public\_ip\_address) | Whether to associate a public IP to the instance. | `bool` | `false` | no |
| <a name="input_capacity_type"></a> [capacity\_type](#input\_capacity\_type) | Type of capacity associated with the EKS Node Group. | `any` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of the EKS Cluster. | `any` | n/a | yes |
| <a name="input_desired_size"></a> [desired\_size](#input\_desired\_size) | Desired number of worker nodes. | `any` | n/a | yes |
| <a name="input_disk_size"></a> [disk\_size](#input\_disk\_size) | Disk size in GiB for worker nodes. | `any` | n/a | yes |
| <a name="input_eks_name"></a> [eks\_name](#input\_eks\_name) | Name of the cluster. | `any` | n/a | yes |
| <a name="input_eks_version"></a> [eks\_version](#input\_eks\_version) | Desired Kubernetes master version. | `any` | n/a | yes |
| <a name="input_endpoint_private_access"></a> [endpoint\_private\_access](#input\_endpoint\_private\_access) | Whether the Amazon EKS private API server endpoint is enabled. | `any` | n/a | yes |
| <a name="input_endpoint_public_access"></a> [endpoint\_public\_access](#input\_endpoint\_public\_access) | Whether the Amazon EKS public API server endpoint is enabled. | `any` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | The name of environment: dev, stage, prod | `string` | n/a | yes |
| <a name="input_force_update_version"></a> [force\_update\_version](#input\_force\_update\_version) | Force version update if existing pods are unable to be drained due to a pod disruption budget issue. | `any` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Bastion instance type | `string` | `"t2.micro"` | no |
| <a name="input_instance_types"></a> [instance\_types](#input\_instance\_types) | List of instance types associated with the EKS Node Group. | `any` | n/a | yes |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Key name | `string` | `""` | no |
| <a name="input_max_size"></a> [max\_size](#input\_max\_size) | Maximum number of worker nodes. | `any` | n/a | yes |
| <a name="input_max_subnets"></a> [max\_subnets](#input\_max\_subnets) | n/a | `number` | `20` | no |
| <a name="input_min_size"></a> [min\_size](#input\_min\_size) | Minimum number of worker nodes. | `any` | n/a | yes |
| <a name="input_node_group_name"></a> [node\_group\_name](#input\_node\_group\_name) | Name of the EKS Node Group. | `any` | n/a | yes |
| <a name="input_outbound_all"></a> [outbound\_all](#input\_outbound\_all) | n/a | <pre>list(object({<br>    port = number<br>    protocol    = string<br>    cidr_blocks = list(string)<br>  }))</pre> | n/a | yes |
| <a name="input_security_group_tag"></a> [security\_group\_tag](#input\_security\_group\_tag) | List of security group IDs for the cross-account elastic network interfaces that Amazon EKS creates to use to allow communication between your worker nodes and the Kubernetes control plane. | `any` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | n/a |
| <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |


# Connection to bastion host server with private key
 
```
git clone https://pat@github.com/<your account or organization>/<repo>.git
```

# Commands for bastion configuration

```
aws configure
```
add AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY to configure configmap in eks

```
aws eks update-kubeconfig --name eks --region us-east-1
```
update kubeconfig of bastion host
```
kubectl edit configmap aws-auth -n kube-system
```

add user 

```
groups:
- system:boostrapper
- system:masters
- system:nodes
rolearn: role_arn_of_your_bastion_host
username: bastion
```
now you could test with command 
```
kubectl get nodes 
kubectl run nginx --image nginx
kubectl get pods