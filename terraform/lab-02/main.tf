terraform {
  required_version = ">=1.17.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~>2.0"
    }
  }
}

resource "local_file" "welcome" {
  filename = "${path.module}/welcome.txt"
  content  = var.message
}