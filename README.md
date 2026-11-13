# AWS DevOps Labs

Hands-on DevOps engineering labs covering AWS, Terraform, Kubernetes, GitHub Actions, and infrastructure automation.

This repository documents my practical learning journey toward becoming a DevOps engineer.

## Technologies

- **AWS:** IAM, EC2, VPC, S3, CloudWatch, Lambda, and other AWS services
- **Terraform:** Infrastructure as Code (IaC), modules, state management, and reusable configurations
- **Kubernetes:** Container orchestration, deployments, networking, and troubleshooting
- **Git & GitHub:** Version control, feature branches, pull requests, and code reviews
- **GitHub Actions:** CI/CD automation

## Terraform Labs

| Lab | Topic | Key concepts |
|---|---|---|
| 01 | AWS Provider and Data Sources | Providers, variables, data sources, outputs, state |
| 02 | Local Resources | `local_file`, lifecycle changes, drift, destroy |
| 03 | AWS S3 Bucket | Resource creation, tags, drift detection |
| 04 | Resource Dependencies | Implicit dependencies, dependency graph, S3 versioning |
| 05 | Secure S3 Bucket | Public access blocking, encryption, versioning |
| 06 | Remote State and Locking | S3 backend, state migration, locking |
| 07 | Terraform Modules | Child modules, inputs, outputs, module instances |
| 08 | Reusable AWS S3 Module | Input validation, secure reusable infrastructure |
| 09 | `count` and `for_each` | Numeric indices, stable keys, maps, `for` expressions |

## Requirements

- Terraform >= 1.17.0
- AWS CLI v2
- AWS account with IAM Identity Center access
- Git

## Running a Terraform Lab

Navigate to a lab directory:

```bash
cd terraform/lab-09
```

Initialize Terraform:

```bash
terraform init
```

Format and validate the configuration:

```bash
terraform fmt -check
terraform validate
```

Review the execution plan:

```bash
terraform plan
```

Apply the configuration when appropriate:

```bash
terraform apply
```

Clean up resources after completing the exercise:

```bash
terraform destroy
```

**Note:** Some labs create AWS resources that may incur charges. Always review the Terraform plan before applying changes and follow the lab-specific cleanup instructions.

## AWS Authentication

AWS labs use IAM Identity Center (SSO) authentication rather than long-lived access keys.

```bash
aws sso login --profile devops-learning
```

Some labs require an active AWS session. The configured profile and region may need adjustment for other environments.

## Terraform State

Terraform state files, provider directories, and sensitive local configuration files are excluded from Git.

Lab 06 demonstrates remote Terraform state storage using an S3 backend with state locking.

The backend bootstrap configuration is maintained separately from the labs that use the remote backend. **Do not destroy the persistent backend bucket during routine lab cleanup.**

## Git Workflow

Each lab is developed using a feature branch and merged into `main` through a GitHub pull request.

Typical workflow:

```bash
git switch main
git pull --ff-only origin main
git switch -c feature/terraform-lab-XX
```

After completing the lab:

```bash
git add terraform/lab-XX/
git commit -m "Add Terraform lab XX"
git push -u origin feature/terraform-lab-XX
```

Create and merge a pull request, then synchronize the local `main` branch.

## Learning Progress

**Terraform:** Labs 01–09 completed.

Upcoming topics include local values, advanced expressions, lifecycle management, and practical AWS infrastructure provisioning.

## Security and Cost Awareness

- Do not commit Terraform state files, credentials, or secrets.
- Use temporary AWS credentials through IAM Identity Center.
- Review Terraform plans before applying changes.
- Destroy temporary AWS infrastructure after completing labs.
- Monitor AWS spending and remember that budget alerts do not automatically stop charges.