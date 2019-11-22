output "user_arn" {
  description = "The ARN assigned by AWS for this user."
  value       = aws_iam_user.iam_user.arn
}

output "user_name" {
  description = "The user's name."
  value       = aws_iam_user.iam_user.name
}

output "user_unique_id" {
  description = "The unique ID assigned by AWS."
  value       = aws_iam_user.iam_user.unique_id
}


output "group_id" {
  description = "The group's ID."
  value       = aws_iam_group.iam_user_group[0].id
}


output "group_arn" {
  description = "The ARN assigned by AWS for this group."
  value       = aws_iam_group.iam_user_group[0].arn
}

output "group_name" {
  description = "The group's name."
  value       = aws_iam_group.iam_user_group[0].name
}

output "group_unique_id" {
  description = "The unique ID assigned by AWS."
  value       = aws_iam_group.iam_user_group[0].unique_id
}
