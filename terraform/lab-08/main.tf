terraform {
  required_version = ">= 1.17.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region  = "eu-central-1"
  profile = "devops-learning"
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = "devops-learning-lab-08"
  environment = "development"
}