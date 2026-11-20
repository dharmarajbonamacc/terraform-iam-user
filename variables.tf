variable "s3_policy_arn" {
  description = "S3 Read Only Access Policy"
  type        = string
  default     = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}
