output "s3_bucket_id" {
  description = "The name (ID) of the S3 bucket."
  value       = aws_s3_bucket.main.id
}

output "s3_bucket_domain_name" {
  description = "The domain name of the S3 bucket."
  value       = aws_s3_bucket.main.bucket_domain_name
}