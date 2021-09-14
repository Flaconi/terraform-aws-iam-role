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
| terraform | >= 0.12.26 |
| aws | >= 3 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Name of the role | `any` | n/a | yes |
| attach\_policy\_arns | Policy arns  attacherd to the assuming role | `list(string)` | `[]` | no |
| enabled | Set to false to prevent the module from creating any resources | `bool` | `true` | no |
| iam\_role\_principals\_arns | Other IAM Principals which can assume the role | `list(string)` | `[]` | no |
| inline\_policies | Policies applied to the assuming role | <pre>list(object({<br>    name = string<br>    statements = list(object({<br>      actions   = list(string)<br>      resources = list(string)<br>    }))<br>  }))</pre> | `[]` | no |
| service\_principals | IAM service Principals which can assume the role | `list(string)` | <pre>[<br>  "ec2.amazonaws.com"<br>]</pre> | no |
| tags | Tags applied to the resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| this\_aws\_iam\_role\_arn | The IAM Role ARN |
| this\_aws\_iam\_role\_id | The IAM Role ID |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License

[MIT](LICENSE)

Copyright (c) 2021 [Flaconi GmbH](https://github.com/Flaconi)
