variable "aws_region" {
  description = "AWS Region used for Terraform exercises"
  type        = string
  default     = "eu-central-1"
}

variable "aws_profile" {
  description = "Local AWS CLI profile"
  type        = string
  default     = "devops-learning"
}