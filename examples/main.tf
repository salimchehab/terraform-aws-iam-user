# Allow Terraform version 0.12.x
terraform {
  required_version = ">= 0.12, < 0.13"
}

# Allow AWS provider version 2.x
provider "aws" {
  region  = "eu-central-1"
  version = "~> 2.0"
}

# This policy grants permissions to view resources and basic metadata across all AWS services
data "aws_iam_policy" "ViewOnlyAccess" {
  arn = "arn:aws:iam::aws:policy/job-function/ViewOnlyAccess"
}

# The security audit template grants access to read security configuration metadata. It is useful for software that audits the configuration of an AWS account
data "aws_iam_policy" "SecurityAudit" {
  arn = "arn:aws:iam::aws:policy/SecurityAudit"
}

# Create a new user and group "ViewOnlyAccess". Add the user to the new group
module "iam_user" {
  source              = "../"
  iam_user_name       = "testing-awesome-readonly-user"
  iam_user_group_name = "ViewOnlySecurityAuditAccess"
  create_iam_group    = true
  iam_group_policy_arns = [
    data.aws_iam_policy.ViewOnlyAccess.arn,
    data.aws_iam_policy.SecurityAudit.arn
  ]
  iam_user_tags = {
    "Environment" = "Sandbox"
    "Terraform"   = true
  }
}
