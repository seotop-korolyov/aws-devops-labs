terraform {
  required_version = ">= 1.17.0"
}

module "development" {
  source  = "./modules/message"
  message = "Development environment updated!"
}

module "production" {
  source  = "./modules/message"
  message = "Hello from production!"
}