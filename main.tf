# -------------------------------------------------------------------------------------------------
# IAM Role
# -------------------------------------------------------------------------------------------------

resource "aws_iam_role" "this" {
  count = var.enabled ? 1 : 0
  name  = var.name

  assume_role_policy = element(concat(data.aws_iam_policy_document.trust_policy.*.json, [""]), 0)
  description        = "description"

  tags = var.tags
}


data "aws_iam_policy_document" "trust_policy" {
  count = var.enabled ? 1 : 0
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    dynamic principals {
      for_each = var.service_principals
      content {
        type        = "Service"
        identifiers = [principals.value]
      }
    }
    dynamic principals {
      for_each = var.iam_role_principals_arns
      content {
        type        = "AWS"
        identifiers = [principals.value]
      }
    }
  }
}


data "aws_iam_policy_document" "this" {
  count = var.enabled ? length(var.inline_policies) : 0

  dynamic statement {
    for_each = var.inline_policies[count.index].statements

    content {
      sid       = lookup(statement.value, "sid", "")
      effect    = lookup(statement.value, "effect", "Allow")
      actions   = lookup(statement.value, "actions")
      resources = statement.value.resources
    }
  }
}

resource "aws_iam_role_policy" "this" {
  count  = var.enabled ? length(var.inline_policies) : 0
  name   = lookup(var.inline_policies[count.index], "name")
  role   = element(concat(aws_iam_role.this.*.id, [""]), 0)
  policy = data.aws_iam_policy_document.this[count.index].json
}

resource "aws_iam_role_policy_attachment" "this" {
  count      = var.enabled ? length(var.attach_policy_arns) : 0
  role       = element(concat(aws_iam_role.this.*.id, [""]), 0)
  policy_arn = var.attach_policy_arns[count.index]
}

