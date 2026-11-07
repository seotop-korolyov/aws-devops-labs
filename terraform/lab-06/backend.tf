terraform {
  backend "s3" {
    bucket       = "devops-tfstate-learning-05nov2026"
    key          = "terraform/lab-06/terraform.tfstate"
    region       = "eu-central-1"
    profile      = "devops-learning"
    encrypt      = true
    use_lockfile = true
  }
}