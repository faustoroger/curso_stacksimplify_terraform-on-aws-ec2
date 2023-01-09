output "for_output_list" {
  description = "For Loop with List"
  value       = [for instance in aws_instance.myec2vm : instance.public_dns]
}

output "for_output_map1" {
  description = "For Loop with Map"
  value       = { for instance in aws_instance.myec2vm : instance.id => instance.public_dns }
}

output "for_output_map2" {
  description = "For Loop with Map - Advanced"
  value       = { for c, instance in aws_instance.myec2vm : c => instance.public_dns }
}

output "legacy_splat_instance_publicdns" {
  description = "Legacy splat expression"
  value       = aws_instance.myec2vm.*.public_dns
}

output "latest_splat_instance_publicdns" {
  description = "Generalized splat expression"
  value       = aws_instance.myec2vm[*].public_dns
}
