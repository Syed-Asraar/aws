variable "aws_region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "ap-south-1"
}

variable "bucket_name" {
  description = "The name of the S3 bucket. Must be globally unique."
  type = string
  default = "kuch-bhi-bucket-ka-naam"
}