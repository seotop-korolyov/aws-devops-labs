provider "aws" {
  region  = "eu-central-1"
  profile = "devops-learning"
}

data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

output "aws_environment" {
  value = {
    account_id = data.aws_caller_identity.current.account_id
    region     = data.aws_region.current.region
  }
}