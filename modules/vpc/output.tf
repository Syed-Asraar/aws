output "vpc_id" {
  description = "The ID of the created VPC."
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "The ID of the created public subnet."
  value       = aws_subnet.public.*.id
}

output "private_subnet_ids" {
  description = "A list of the created private subnet IDs."
  value       = aws_subnet.private.*.id
}