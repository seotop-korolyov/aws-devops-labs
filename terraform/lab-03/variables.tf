variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
}

variable "aws_profile" {
  description = "AWS CLI profile"
  type        = string
  default     = "devops-learning"
}

variable "bucket_name" {
  description = "Globally unique S3 bucket name"
  type        = string
}