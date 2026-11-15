locals {
  resource_prefix = "${var.project_name}-${var.environment}"

  comman_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }

  servers = {
    web    = "t3.micro"
    api    = "t3.small"
    worker = "t3.micro"
  }
}