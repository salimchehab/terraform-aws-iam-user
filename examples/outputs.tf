output "user_arn" {
  description = "The ARN assigned by AWS for this user."
  value       = module.iam_user.user_arn
}

output "user_name" {
  description = "The user's name."
  value       = module.iam_user.user_name
}

output "user_unique_id" {
  description = "The unique ID assigned by AWS."
  value       = module.iam_user.user_unique_id

}


output "group_id" {
  description = "The group's ID."
  value       = module.iam_user.group_id
}


output "group_arn" {
  description = "The ARN assigned by AWS for this group."
  value       = module.iam_user.group_arn
}

output "group_name" {
  description = "The group's name."
  value       = module.iam_user.group_name
}

output "group_unique_id" {
  description = "The unique ID assigned by AWS."
  value       = module.iam_user.group_unique_id
}
