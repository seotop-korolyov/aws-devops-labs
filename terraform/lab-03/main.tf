terraform {
  required_version = ">=1.17.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_s3_bucket" "learning" {
  bucket = var.bucket_name

  tags = {
    Project     = "DevOpsLearning"
    Environment = "Lab"
    ManagedBy   = "Terraform"
  }
}