terraform {
  required_version = ">= 1.17.0"
}

resource "terraform_data" "database" {
  input = "Database ready"
}

resource "terraform_data" "application" {
  input = {
    name            = "web-application"
    database_status = "Database ready"
  }


}

output "application_configuration" {
  value = terraform_data.application.output
}