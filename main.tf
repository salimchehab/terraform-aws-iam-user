# ----------------------------------------------------------------------------------------------------------------------
# This module requires a terraform version of 0.12.x.
# ----------------------------------------------------------------------------------------------------------------------
terraform {
  required_version = ">= 0.12, < 0.13"
}

# ----------------------------------------------------------------------------------------------------------------------
# Create IAM user, attach a policy, and add it to a group
# ----------------------------------------------------------------------------------------------------------------------

resource "aws_iam_user" "iam_user" {
  name = var.iam_user_name
}

resource "aws_iam_group" "iam_user_group" {
  count = var.create_iam_group ? 1 : 0
  name  = var.iam_user_group_name
  # Prevent NoSuchEntity error when the group name changes
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_iam_group_policy_attachment" "iam_user_group_attach" {
  count      = length(var.iam_group_policy_arns)
  group      = aws_iam_group.iam_user_group[0].name
  policy_arn = var.iam_group_policy_arns[count.index]
}

resource "aws_iam_user_group_membership" "iam_user_group_member" {
  user   = aws_iam_user.iam_user.name
  groups = [aws_iam_group.iam_user_group[0].name]
}
