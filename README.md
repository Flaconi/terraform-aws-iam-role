# AWS IAM System Role

[![Lint Status](https://github.com/Flaconi/terraform-aws-iam-role/actions/workflows/linting.yml/badge.svg?branch=master)](https://github.com/Flaconi/terraform-aws-iam-role/actions/workflows/linting.yml)
[![Docs Status](https://github.com/Flaconi/terraform-aws-iam-role/actions/workflows/terraform-docs.yml/badge.svg?branch=master)](https://github.com/Flaconi/terraform-aws-iam-role/actions/workflows/terraform-docs.yml)
[![Tag](https://img.shields.io/github/tag/Flaconi/terraform-aws-iam-role.svg)](https://github.com/Flaconi/terraform-aws-iam-role/releases)
[![license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)

Terraform module that provides an IAM User and IAM Role with given policies.

## Examples

Check the [examples](examples) directory.


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.26 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.trust_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Name of the role | `any` | n/a | yes |
| <a name="input_attach_policy_arns"></a> [attach\_policy\_arns](#input\_attach\_policy\_arns) | Policy arns  attacherd to the assuming role | `list(string)` | `[]` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Set to false to prevent the module from creating any resources | `bool` | `true` | no |
| <a name="input_iam_role_principals_arns"></a> [iam\_role\_principals\_arns](#input\_iam\_role\_principals\_arns) | Other IAM Principals which can assume the role | `list(string)` | `[]` | no |
| <a name="input_inline_policies"></a> [inline\_policies](#input\_inline\_policies) | Policies applied to the assuming role | <pre>list(object({<br>    name = string<br>    statements = list(object({<br>      actions   = list(string)<br>      resources = list(string)<br>    }))<br>  }))</pre> | `[]` | no |
| <a name="input_service_principals"></a> [service\_principals](#input\_service\_principals) | IAM service Principals which can assume the role | `list(string)` | <pre>[<br>  "ec2.amazonaws.com"<br>]</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags applied to the resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this_aws_iam_role_arn"></a> [this\_aws\_iam\_role\_arn](#output\_this\_aws\_iam\_role\_arn) | The IAM Role ARN |
| <a name="output_this_aws_iam_role_id"></a> [this\_aws\_iam\_role\_id](#output\_this\_aws\_iam\_role\_id) | The IAM Role ID |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License

[MIT](LICENSE)

Copyright (c) 2021 [Flaconi GmbH](https://github.com/Flaconi)
