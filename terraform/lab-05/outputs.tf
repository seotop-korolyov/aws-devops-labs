output "bucket_name" {
  value = aws_s3_bucket.learning.id
}

output "versioning_status" {
  value = aws_s3_bucket_versioning.learning.versioning_configuration[0].status
}

output "encryption_algorithm" {
  value = one(
    aws_s3_bucket_server_side_encryption_configuration.learning.rule
  ).apply_server_side_encryption_by_default[0].sse_algorithm
}