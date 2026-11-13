output "environment_names" {
  value = terraform_data.environment[*].output
}

output "server_configurations" {
  value = {
    for name, server in terraform_data.server_configuration :
    name => server.output
  }
}