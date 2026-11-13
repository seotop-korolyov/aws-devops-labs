terraform {
  required_version = ">= 1.17.0"
}

variable "environments" {
  description = "Environments to create"
  type        = list(string)
  default     = ["development", "production"]
}

variable "servers" {
  description = "EC2 instance types by environment"
  type        = map(string)

  default = {
    development = "t3.micro"
    staging     = "t3.small"
    production  = "t3.large"
  }
}

resource "terraform_data" "environment" {
  count = length(var.environments)

  input = var.environments[count.index]
}

resource "terraform_data" "environment_by_name" {
  for_each = toset(var.environments)

  input = each.value
}

resource "terraform_data" "server_configuration" {
  for_each = var.servers

  input = {
    environment   = each.key
    instance_type = each.value
  }
}