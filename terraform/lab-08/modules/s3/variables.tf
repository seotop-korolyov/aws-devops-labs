variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string

  validation {
    condition = (
      length(var.bucket_name) >= 3 &&
      length(var.bucket_name) <= 63 &&
      can(regex("^[a-z0-9][a-z0-9.-]*[a-z0-9]$", var.bucket_name))
    )
    error_message = "Bucket name must contain 3–63 characters, use lowercase letters, numbers, dots or hyphens, and start and end with a letter or number."
  }
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "development"

  validation {
    condition = contains(
      ["development", "staging", "production"],
      var.environment
    )
    error_message = "Environment must be development, staging, or production."
  }
}