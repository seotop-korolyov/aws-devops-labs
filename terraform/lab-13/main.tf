terraform {
  required_version = ">= 1.17.0"
}

variable "app_version" {
  type    = string
  default = "v1"
}

resource "terraform_data" "application" {
  input = {
    name    = "web-application"
    version = var.app_version
  }
}

output "application_version" {
  value = terraform_data.application.output.version
}

output "application_name" {
  value = terraform_data.application.input.name
}

output "application_id" {
  value = terraform_data.application.id
}

output "application_details" {
  value = terraform_data.application.output
}