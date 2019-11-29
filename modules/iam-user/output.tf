output "this_iam_user_name" {
  description = "The user's name"
  value       = element(concat(aws_iam_user.this.*.name, [""]), 0)
}

output "this_iam_user_arn" {
  description = "The ARN assigned by AWS for this user"
  value       = element(concat(aws_iam_user.this.*.arn, [""]), 0)
}

output "this_iam_user_unique_id" {
  description = "The unique ID assigned by AWS"
  value       = element(concat(aws_iam_user.this.*.unique_id, [""]), 0)
}

output "this_iam_access_key_id" {
  description = "The access key ID"
  value = element(
    concat(
      aws_iam_access_key.this_no_pgp.*.id,
      [""],
    ),
    0,
  )
}

output "this_iam_access_key_secret" {
  description = "The access key secret"
  value       = element(concat(aws_iam_access_key.this_no_pgp.*.secret, [""]), 0)
}

output "this_iam_access_key_status" {
  description = "Active or Inactive. Keys are initially active, but can be made inactive by other means."
  value = element(
    concat(
      aws_iam_access_key.this_no_pgp.*.status,
      [""],
    ),
    0,
  )
}

output "id" {
  description = "The policy's ID"
  value       = aws_iam_policy.policy.id
}

output "arn" {
  description = "The ARN assigned by AWS to this policy"
  value       = aws_iam_policy.policy.arn
}

output "description" {
  description = "The description of the policy"
  value       = aws_iam_policy.policy.description
}

output "name" {
  description = "The name of the policy"
  value       = aws_iam_policy.policy.name
}

output "path" {
  description = "The path of the policy in IAM"
  value       = aws_iam_policy.policy.path
}

output "policy" {
  description = "The policy document"
  value       = aws_iam_policy.policy.policy
}
