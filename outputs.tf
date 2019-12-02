output "this_aws_iam_role_id" {
  description = "The IAM Role ID"
  value       = element(concat(aws_iam_role.this.*.id, [""]), 0)
}

output "this_aws_iam_role_arn" {
  description = "The IAM Role ARN"
  value       = element(concat(aws_iam_role.this.*.arn, [""]), 0)
}
