output "resource_prefix" {
  value = local.resource_prefix
}

output "server_configurations" {
  value = {
    for name, server in terraform_data.server :
    name => server.output
  }
}