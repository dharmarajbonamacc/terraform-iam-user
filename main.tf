provider "aws" {
  region = "ap-south-1"
}

resource "aws_iam_user" "terraform_user" {
  name = "dharma-terraform-user"
}

resource "aws_iam_policy" "s3_read_policy" {
  name        = "dharma-project4-s3-read"
  description = "S3 read-only access"
  policy      = var.s3_read_policy
}

resource "aws_iam_user_policy_attachment" "s3_read" {
  user       = aws_iam_user.terraform_user.name
  policy_arn = aws_iam_policy.s3_read_policy.arn
}
