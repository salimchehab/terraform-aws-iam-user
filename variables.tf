variable "iam_user_name" {
  description = "The user's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-_.."
  type        = string
}

variable "iam_user_tags" {
  description = "Key-value mapping of tags for the IAM user."
  type        = map(string)
  default = {
    "Terraform" = true
  }
}

variable "iam_user_group_name" {
  description = "The group's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-_.."
  type        = string
}

variable "create_iam_group" {
  description = "Create the IAM group if not already existing."
  type        = bool
  default     = false
}

variable "iam_group_policy_arns" {
  description = "A list of the ARNs of the policies you want to apply. eg. ['arn:aws:iam::aws:policy/AWSSupportAccess']."
  type        = list(string)
  default     = []
}
