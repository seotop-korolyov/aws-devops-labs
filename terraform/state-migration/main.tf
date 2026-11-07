terraform {
  required_version = ">= 1.17.0"
}

resource "terraform_data" "migration_test" {
  input = "This resource was originally managed with local state."
}