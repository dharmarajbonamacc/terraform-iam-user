output "iam_user_name" {
  description = "Created IAM User Name"
  value       = aws_iam_user.terraform_user.name
}

output "iam_user_arn" {
  description = "Created IAM User ARN"
  value       = aws_iam_user.terraform_user.arn
}
