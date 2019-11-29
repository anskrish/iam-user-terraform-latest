output "this_iam_access_key_id" {
  description = "The access key ID"
  value       = module.iam_user.this_iam_access_key_id
}



output "this_iam_access_key_secret" {
  description = "The access key secret"
  value       = module.iam_user.this_iam_access_key_secret
}


output "this_iam_access_key_status" {
  description = "Active or Inactive. Keys are initially active, but can be made inactive by other means."
  value       = module.iam_user.this_iam_access_key_status
}
output "id" {
  description = "The policy ID"
  value       = module.iam_user.id
}

output "arn" {
  description = "The ARN assigned by AWS to this policy"
  value       = module.iam_user.arn
}

output "description" {
  description = "The description of the policy"
  value       = module.iam_user.description
}

output "name" {
  description = "The name of the policy"
  value       = module.iam_user.name
}

output "path" {
  description = "The path of the policy in IAM"
  value       = module.iam_user.path
}

output "policy" {
  description = "The policy document"
  value       = module.iam_user.policy
}
