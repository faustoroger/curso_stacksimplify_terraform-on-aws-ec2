<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.myec2vm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_security_group.vpc-ssh](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.vpc-web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_ami.amzlinux2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Region in which AWS resources will be created | `string` | `"us-east-1"` | no |
| <a name="input_instance_keypair"></a> [instance\_keypair](#input\_instance\_keypair) | AWS EC2 Keypair that need to be associated with EC2 instance | `string` | `"terraform-key"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | EC2 Instance type | `string` | `"t3.micro"` | no |
| <a name="input_instance_type_list"></a> [instance\_type\_list](#input\_instance\_type\_list) | EC2 Instance type | `list(string)` | <pre>[<br>  "t3.micro",<br>  "t3.small"<br>]</pre> | no |
| <a name="input_instance_type_map"></a> [instance\_type\_map](#input\_instance\_type\_map) | EC2 Instance type | `map(string)` | <pre>{<br>  "dev": "t3.micro",<br>  "prod": "t3.large",<br>  "qa": "t3.small"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_for_output_list"></a> [for\_output\_list](#output\_for\_output\_list) | For Loop with List |
| <a name="output_for_output_map1"></a> [for\_output\_map1](#output\_for\_output\_map1) | For Loop with Map |
| <a name="output_for_output_map2"></a> [for\_output\_map2](#output\_for\_output\_map2) | For Loop with Map - Advanced |
| <a name="output_latest_splat_instance_publicdns"></a> [latest\_splat\_instance\_publicdns](#output\_latest\_splat\_instance\_publicdns) | Generalized splat expression |
| <a name="output_legacy_splat_instance_publicdns"></a> [legacy\_splat\_instance\_publicdns](#output\_legacy\_splat\_instance\_publicdns) | Legacy splat expression |
<!-- END_TF_DOCS -->