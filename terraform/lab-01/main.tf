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
  region  = "eu-central-1"
  profile = "devops-learning"
}
data "aws_caller_identity" "current" {}
data "aws_region" "current" {}