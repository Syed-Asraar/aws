provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "main" {
  # The bucket name must be globally unique across all of AWS.
  # We use a variable to make it easy to change.
  bucket = var.bucket_name

  tags = {
    Name        = "My-S3-Bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "main" {
  bucket = aws_s3_bucket.main.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "main" {
  bucket = aws_s3_bucket.main.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}