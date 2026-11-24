resource "local_file" "configuration" {
  filename = "${path.module}/application.txt"
  content  = "Application version: v1\n"
}

output "configuration_file" {
  value = local_file.configuration.filename
}