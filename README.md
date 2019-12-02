# AWS IAM System Role

[![Build Status](https://travis-ci.com/Flaconi/terraform-aws-system-user-role.svg?branch=master)](https://travis-ci.com/Flaconi/terraform-aws-system-user-role)
[![Tag](https://img.shields.io/github/tag/Flaconi/terraform-aws-system-user-role.svg)](https://github.com/Flaconi/terraform-aws-system-user-role/releases)
[![license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)

Terraform module that provides an IAM User and IAM Role with given policies.

## Examples

Check the [examples](examples) directory.


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name | Name of the user and role | string | n/a | yes |
| attach\_policy\_arns | Policy arns  attacherd to the assuming role | list | `[]` | no |
| enabled | Set to false to prevent the module from creating any resources | bool | `"true"` | no |
| iam\_role\_principals\_arns | Other IAM Principals which can assume the role | list | `[]` | no |
| inline\_policies | Policies applied to the assuming role | list | `[]` | no |
| tags | Tags applied to the resources | map | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| this\_aws\_iam\_access\_key\_id | The access key id |
| this\_aws\_iam\_access\_key\_secret | The access key secret |
| this\_aws\_iam\_role\_arn | The IAM Role ARN |
| this\_aws\_iam\_role\_id | The IAM Role ID |
| this\_aws\_iam\_user\_arn | The IAM User ARN |
| this\_aws\_iam\_user\_id | The IAM User ID |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License

[MIT](LICENSE)

Copyright (c) 2019 [Flaconi GmbH](https://github.com/Flaconi)
