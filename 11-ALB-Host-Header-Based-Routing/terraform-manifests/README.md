<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.0 |
| <a name="provider_null"></a> [null](#provider\_null) | ~> 3.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_acm"></a> [acm](#module\_acm) | terraform-aws-modules/acm/aws | 2.14.0 |
| <a name="module_alb"></a> [alb](#module\_alb) | terraform-aws-modules/alb/aws | 5.16.0 |
| <a name="module_ec2_private_app1"></a> [ec2\_private\_app1](#module\_ec2\_private\_app1) | terraform-aws-modules/ec2-instance/aws | 2.17.0 |
| <a name="module_ec2_private_app2"></a> [ec2\_private\_app2](#module\_ec2\_private\_app2) | terraform-aws-modules/ec2-instance/aws | 2.17.0 |
| <a name="module_ec2_public"></a> [ec2\_public](#module\_ec2\_public) | terraform-aws-modules/ec2-instance/aws | 2.17.0 |
| <a name="module_loadbalancer_sg"></a> [loadbalancer\_sg](#module\_loadbalancer\_sg) | terraform-aws-modules/security-group/aws | 3.18.0 |
| <a name="module_private_sg"></a> [private\_sg](#module\_private\_sg) | terraform-aws-modules/security-group/aws | 3.18.0 |
| <a name="module_public_bastion_sg"></a> [public\_bastion\_sg](#module\_public\_bastion\_sg) | terraform-aws-modules/security-group/aws | 3.18.0 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | 2.78.0 |

## Resources

| Name | Type |
|------|------|
| [aws_eip.bastion_eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_route53_record.app1_dns](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.app2_dns](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.default_dns](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [null_resource.name](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [aws_ami.amzlinux2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_route53_zone.mydomain](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app1_dns_name"></a> [app1\_dns\_name](#input\_app1\_dns\_name) | App1 DNS Name | `any` | n/a | yes |
| <a name="input_app2_dns_name"></a> [app2\_dns\_name](#input\_app2\_dns\_name) | App2 DNS Name | `any` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Region in which AWS Resources to be created | `string` | `"us-east-1"` | no |
| <a name="input_business_divsion"></a> [business\_divsion](#input\_business\_divsion) | Business Division in the large organization this Infrastructure belongs | `string` | `"sap"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment Variable used as a prefix | `string` | `"dev"` | no |
| <a name="input_instance_keypair"></a> [instance\_keypair](#input\_instance\_keypair) | AWS EC2 Key pair that need to be associated with EC2 Instance | `string` | `"terraform-key"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | EC2 Instance Type | `string` | `"t3.micro"` | no |
| <a name="input_private_instance_count"></a> [private\_instance\_count](#input\_private\_instance\_count) | AWS EC2 Private Instances Count | `number` | `1` | no |
| <a name="input_vpc_availability_zones"></a> [vpc\_availability\_zones](#input\_vpc\_availability\_zones) | VPC Availability Zones | `list(string)` | <pre>[<br>  "us-east-1a",<br>  "us-east-1b"<br>]</pre> | no |
| <a name="input_vpc_cidr_block"></a> [vpc\_cidr\_block](#input\_vpc\_cidr\_block) | VPC CIDR Block | `string` | `"10.0.0.0/16"` | no |
| <a name="input_vpc_create_database_subnet_group"></a> [vpc\_create\_database\_subnet\_group](#input\_vpc\_create\_database\_subnet\_group) | VPC Create Database Subnet Group | `bool` | `true` | no |
| <a name="input_vpc_create_database_subnet_route_table"></a> [vpc\_create\_database\_subnet\_route\_table](#input\_vpc\_create\_database\_subnet\_route\_table) | VPC Create Database Subnet Route Table | `bool` | `true` | no |
| <a name="input_vpc_database_subnets"></a> [vpc\_database\_subnets](#input\_vpc\_database\_subnets) | VPC Database Subnets | `list(string)` | <pre>[<br>  "10.0.151.0/24",<br>  "10.0.152.0/24"<br>]</pre> | no |
| <a name="input_vpc_enable_nat_gateway"></a> [vpc\_enable\_nat\_gateway](#input\_vpc\_enable\_nat\_gateway) | Enable NAT Gateways for Private Subnets Outbound Communication | `bool` | `true` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | VPC Name | `string` | `"myvpc"` | no |
| <a name="input_vpc_private_subnets"></a> [vpc\_private\_subnets](#input\_vpc\_private\_subnets) | VPC Private Subnets | `list(string)` | <pre>[<br>  "10.0.1.0/24",<br>  "10.0.2.0/24"<br>]</pre> | no |
| <a name="input_vpc_public_subnets"></a> [vpc\_public\_subnets](#input\_vpc\_public\_subnets) | VPC Public Subnets | `list(string)` | <pre>[<br>  "10.0.101.0/24",<br>  "10.0.102.0/24"<br>]</pre> | no |
| <a name="input_vpc_single_nat_gateway"></a> [vpc\_single\_nat\_gateway](#input\_vpc\_single\_nat\_gateway) | Enable only single NAT Gateway in one Availability Zone to save costs during our demos | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app1_ec2_private_instance_ids"></a> [app1\_ec2\_private\_instance\_ids](#output\_app1\_ec2\_private\_instance\_ids) | List of IDs of instances |
| <a name="output_app1_ec2_private_ip"></a> [app1\_ec2\_private\_ip](#output\_app1\_ec2\_private\_ip) | List of private IP addresses assigned to the instances |
| <a name="output_app2_ec2_private_instance_ids"></a> [app2\_ec2\_private\_instance\_ids](#output\_app2\_ec2\_private\_instance\_ids) | List of IDs of instances |
| <a name="output_app2_ec2_private_ip"></a> [app2\_ec2\_private\_ip](#output\_app2\_ec2\_private\_ip) | List of private IP addresses assigned to the instances |
| <a name="output_azs"></a> [azs](#output\_azs) | A list of availability zones spefified as argument to this module |
| <a name="output_ec2_bastion_public_instance_ids"></a> [ec2\_bastion\_public\_instance\_ids](#output\_ec2\_bastion\_public\_instance\_ids) | List of IDs of instances |
| <a name="output_ec2_bastion_public_ip"></a> [ec2\_bastion\_public\_ip](#output\_ec2\_bastion\_public\_ip) | List of public IP addresses assigned to the instances |
| <a name="output_http_tcp_listener_arns"></a> [http\_tcp\_listener\_arns](#output\_http\_tcp\_listener\_arns) | The ARN of the TCP and HTTP load balancer listeners created. |
| <a name="output_http_tcp_listener_ids"></a> [http\_tcp\_listener\_ids](#output\_http\_tcp\_listener\_ids) | The IDs of the TCP and HTTP load balancer listeners created. |
| <a name="output_https_listener_arns"></a> [https\_listener\_arns](#output\_https\_listener\_arns) | The ARNs of the HTTPS load balancer listeners created. |
| <a name="output_https_listener_ids"></a> [https\_listener\_ids](#output\_https\_listener\_ids) | The IDs of the load balancer listeners created. |
| <a name="output_mydomain_name"></a> [mydomain\_name](#output\_mydomain\_name) | The Hosted Zone name of the desired Hosted Zone. |
| <a name="output_mydomain_zoneid"></a> [mydomain\_zoneid](#output\_mydomain\_zoneid) | The Hosted Zone id of the desired Hosted Zone |
| <a name="output_nat_public_ips"></a> [nat\_public\_ips](#output\_nat\_public\_ips) | List of public Elastic IPs created for AWS NAT Gateway |
| <a name="output_private_sg_group_id"></a> [private\_sg\_group\_id](#output\_private\_sg\_group\_id) | The ID of the security group |
| <a name="output_private_sg_group_name"></a> [private\_sg\_group\_name](#output\_private\_sg\_group\_name) | The name of the security group |
| <a name="output_private_sg_group_vpc_id"></a> [private\_sg\_group\_vpc\_id](#output\_private\_sg\_group\_vpc\_id) | The VPC ID |
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | List of IDs of private subnets |
| <a name="output_public_bastion_sg_group_id"></a> [public\_bastion\_sg\_group\_id](#output\_public\_bastion\_sg\_group\_id) | The ID of the security group |
| <a name="output_public_bastion_sg_group_name"></a> [public\_bastion\_sg\_group\_name](#output\_public\_bastion\_sg\_group\_name) | The name of the security group |
| <a name="output_public_bastion_sg_group_vpc_id"></a> [public\_bastion\_sg\_group\_vpc\_id](#output\_public\_bastion\_sg\_group\_vpc\_id) | The VPC ID |
| <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets) | List of IDs of public subnets |
| <a name="output_target_group_arn_suffixes"></a> [target\_group\_arn\_suffixes](#output\_target\_group\_arn\_suffixes) | ARN suffixes of our target groups - can be used with CloudWatch. |
| <a name="output_target_group_arns"></a> [target\_group\_arns](#output\_target\_group\_arns) | ARNs of the target groups. Useful for passing to your Auto Scaling group. |
| <a name="output_target_group_attachments"></a> [target\_group\_attachments](#output\_target\_group\_attachments) | ARNs of the target group attachment IDs. |
| <a name="output_target_group_names"></a> [target\_group\_names](#output\_target\_group\_names) | Name of the target group. Useful for passing to your CodeDeploy Deployment Group. |
| <a name="output_this_acm_certificate_arn"></a> [this\_acm\_certificate\_arn](#output\_this\_acm\_certificate\_arn) | The ARN of the certificate |
| <a name="output_this_lb_arn"></a> [this\_lb\_arn](#output\_this\_lb\_arn) | The ID and ARN of the load balancer we created. |
| <a name="output_this_lb_arn_suffix"></a> [this\_lb\_arn\_suffix](#output\_this\_lb\_arn\_suffix) | ARN suffix of our load balancer - can be used with CloudWatch. |
| <a name="output_this_lb_dns_name"></a> [this\_lb\_dns\_name](#output\_this\_lb\_dns\_name) | The DNS name of the load balancer. |
| <a name="output_this_lb_id"></a> [this\_lb\_id](#output\_this\_lb\_id) | The ID and ARN of the load balancer we created. |
| <a name="output_this_lb_zone_id"></a> [this\_lb\_zone\_id](#output\_this\_lb\_zone\_id) | The zone\_id of the load balancer to assist with creating DNS records. |
| <a name="output_vpc_cidr_block"></a> [vpc\_cidr\_block](#output\_vpc\_cidr\_block) | The CIDR block of the VPC |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
<!-- END_TF_DOCS -->