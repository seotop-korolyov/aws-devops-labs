output "bucket_name" {
  description = "Name of the created S3 bucket"
  value       = aws_s3_bucket.learning.id
}

output "versioning_status" {
  value = aws_s3_bucket_versioning.learning.versioning_configuration[0].status
}