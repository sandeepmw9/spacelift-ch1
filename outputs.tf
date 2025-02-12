output "common_tags" {
  value = local.common_tags
}

# output "tags" {
#   description = "Instance tags"
#   value       = aws_instance.ubuntu.tags
# }

output "first_tags" {
  description = "Instance tags"
  value       = aws_instance.ubuntu[*].tags
}

output "private_addresses" {
  description = "Private DNS for AWS instances"
  value       = aws_instance.ubuntu[*].private_dns
}
