output "file_path" {
  description = "Path to the Terraform-managed file"
  value       = local_file.welcome.filename
}