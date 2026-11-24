output "iam_user_name" {
  value = aws_iam_user.terraform_user.name
}

output "iam_user_arn" {
  value = aws_iam_user.terraform_user.arn
}

output "policy_arn" {
  value = aws_iam_policy.s3_read_policy.arn
}

output "policy_attachment" {
  value = aws_iam_user_policy_attachment.s3_read.policy_arn
}
