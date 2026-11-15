terraform {
  required_version = ">= 1.17.0"
}

resource "terraform_data" "server" {
  for_each = local.servers

  input = {
    name          = "${local.resource_prefix}-${each.key}"
    instance_type = each.value
    tags          = local.comman_tags
  }
}