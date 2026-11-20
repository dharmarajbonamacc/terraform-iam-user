provider "aws" {
  region = "ap-south-1"
}

resource "aws_iam_user" "terraform_user" {
  name = "dharma-terraform-user"
}

resource "aws_iam_user_policy_attachment" "s3_read" {
  user       = aws_iam_user.terraform_user.name
  policy_arn = var.s3_policy_arn
}
