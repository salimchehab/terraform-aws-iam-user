# Example Commands ans Outputs

Apply:

```text
terraform init
terraform plan -out iam-example-view.tfplan
terraform apply "iam-example-view.tfplan"
```

Output:

```text
Outputs:

group_arn = arn:aws:iam::<REDACTED>:group/ViewOnlySecurityAuditAccess
group_id = ViewOnlySecurityAuditAccess
group_name = ViewOnlySecurityAuditAccess
group_unique_id = <REDACTED>
user_arn = arn:aws:iam::<REDACTED>:user/testing-awesome-readonly-user
user_name = testing-awesome-readonly-user
user_unique_id = <REDACTED>
```
