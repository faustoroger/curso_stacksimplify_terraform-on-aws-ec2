<!-- BEGIN_TF_DOCS -->
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
| [aws_availability_zones.my_azones](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
| [aws_ec2_instance_type_offerings.my_ins_type](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ec2_instance_type_offerings) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_output_v3_1"></a> [output\_v3\_1](#output\_output\_v3\_1) | Basic Output: All Availability Zones mapped to Supported Instance Types |
| <a name="output_output_v3_2"></a> [output\_v3\_2](#output\_output\_v3\_2) | Filtered Output: Exclude Unsupported Availability Zones |
| <a name="output_output_v3_3"></a> [output\_v3\_3](#output\_output\_v3\_3) | Filtered Output: with Keys Function - Which gets keys from a Map This will return the list of availability zones supported for a instance type |
| <a name="output_output_v3_4"></a> [output\_v3\_4](#output\_output\_v3\_4) | Filtered Output: As the output is list now, get the first item from list (just for learning) |
<!-- END_TF_DOCS -->