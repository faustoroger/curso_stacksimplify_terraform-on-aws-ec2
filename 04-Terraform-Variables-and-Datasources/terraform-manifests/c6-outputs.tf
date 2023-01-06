output "instance_public_ip" {
  description = "EC2 Instance public ip"
  value       = aws_instance.myec2vm.public_ip
}