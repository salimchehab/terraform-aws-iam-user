# Summary

This creates IAM users with Terraform using the `aws_iam_user` resource. No API access keys are created for new users automatically since it is recommended for the users to create their own if needed.

As mentioned in Gruntwork's blog [How to achieve compliance with the CIS AWS Foundations Benchmark](1):

To stay compliant with recommendation 1.16, be sure to never attach IAM policies directly to IAM users. Instead, create IAM groups, attach policies to those groups, and add the user to groups using the `aws_iam_group_membership`.
This helps to avoid scenarios where auditing the exact permissions of IAM users becomes difficult and unmaintainable.

[1]: https://gruntwork.io/guides/compliance/how-to-achieve-cis-benchmark-compliance/#identity-and-access-management-2

# Terraform Docs

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create\_iam\_group | Create the IAM group if not already existing. | bool | `"false"` | no |
| iam\_group\_policy\_arns | A list of the ARNs of the policies you want to apply. eg. ['arn:aws:iam::aws:policy/AWSSupportAccess']. | list(string) | `[]` | no |
| iam\_user\_group\_name | The group's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-_.. | string | n/a | yes |
| iam\_user\_name | The user's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-_.. | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| group\_arn | The ARN assigned by AWS for this group. |
| group\_id | The group's ID. |
| group\_name | The group's name. |
| group\_unique\_id | The unique ID assigned by AWS. |
| user\_arn | The ARN assigned by AWS for this user. |
| user\_name | The user's name. |
| user\_unique\_id | The unique ID assigned by AWS. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
