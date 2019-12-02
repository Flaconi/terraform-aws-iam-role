variable "enabled" {
  description = "Set to false to prevent the module from creating any resources"
  type        = bool
  default     = true
}

variable "name" {
  description = "Name of the role"
}

variable "tags" {
  description = "Tags applied to the resources"
  default     = {}
}

variable "inline_policies" {
  description = "Policies applied to the assuming role"
  default     = []
  type = list(object({
    name = string
    statements = list(object({
      actions   = list(string)
      resources = list(string)
    }))
  }))
}

variable "attach_policy_arns" {
  description = "Policy arns  attacherd to the assuming role"
  type        = list(string)
  default     = []
}

variable "iam_role_principals_arns" {
  description = "Other IAM Principals which can assume the role"
  default     = []
}


variable "service_principals" {
  description = "IAM service Principals which can assume the role"
  type        = list(string)
  default     = ["ec2.amazonaws.com"]
}
