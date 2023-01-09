<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.49.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.myec2vm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_security_group.vpc-ssh](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.vpc-web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_ami.amzlinux2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_availability_zones.my_azones](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
| [aws_ec2_instance_type_offerings.my_ins_type](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ec2_instance_type_offerings) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Region in which AWS resources will be created | `string` | `"us-east-1"` | no |
| <a name="input_instance_keypair"></a> [instance\_keypair](#input\_instance\_keypair) | AWS EC2 Keypair that need to be associated with EC2 instance | `string` | `"terraform-key"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | EC2 Instance type | `string` | `"t2.micro"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_publicdns"></a> [instance\_publicdns](#output\_instance\_publicdns) | EC2 Instance Public DNS |
| <a name="output_instance_publicdns2"></a> [instance\_publicdns2](#output\_instance\_publicdns2) | EC2 Instance Public DNS with TOMAP |
| <a name="output_instance_publicip"></a> [instance\_publicip](#output\_instance\_publicip) | EC2 Instance Public IP |
| <a name="output_output_v3_1"></a> [output\_v3\_1](#output\_output\_v3\_1) | Output-1 Basic Output: All Availability Zones mapped to Supported Instance Types |
| <a name="output_output_v3_2"></a> [output\_v3\_2](#output\_output\_v3\_2) | Output-2 Filtered Output: Exclude Unsupported Availability Zones |
| <a name="output_output_v3_3"></a> [output\_v3\_3](#output\_output\_v3\_3) | Output-3 Filtered Output: with Keys Function - Which gets keys from a Map This will return the list of availability zones supported for a instance type |
| <a name="output_output_v3_4"></a> [output\_v3\_4](#output\_output\_v3\_4) | Output-4 (additional learning) Filtered Output: As the output is list now, get the first item from list (just for learning) |
<!-- END_TF_DOCS -->