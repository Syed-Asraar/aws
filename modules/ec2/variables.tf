variable "aws_region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "ap-south-1"
}

variable "ec2_ami" {
  description = "The AWS ami id"
  type        = string
  default     = "ami-0f5ee92e2d63afc18"
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key Pair"
  type        = string
}
