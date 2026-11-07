terraform {
  required_version = ">= 1.17.0"
}

resource "terraform_data" "remote_state_test" {
  input = "Terraform remote state is working!"
}