# AWS DevOps Labs

Hands-on DevOps exercises using AWS, Terraform, Kubernetes,
GitHub Actions, and other DevOps tools.

## Terraform

### Lab 01 — AWS Provider and Data Sources

Topics:
- AWS provider configuration
- IAM Identity Center authentication
- Terraform input variables
- Terraform data sources
- Terraform outputs
- Terraform state

### Requirements

- Terraform >= 1.17.0
- AWS CLI v2
- AWS IAM Identity Center access

### Run

```bash
cd terraform/lab-01

aws sso login --profile devops-learning

terraform init
terraform fmt -check
terraform validate
terraform plan