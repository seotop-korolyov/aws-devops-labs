terraform {
  required_version = ">= 1.17.0"
}

variable "app_version" {
  type    = string
  default = "v2"
}

resource "terraform_data" "application" {
  input = {
    name    = "web-app-updated"
    version = var.app_version
  }

  lifecycle {
    ignore_changes = [
      input
    ]
  }
}

output "application_configuration" {
  value = terraform_data.application.output
}