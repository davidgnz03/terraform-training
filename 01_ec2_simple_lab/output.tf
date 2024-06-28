output "ec2_ip" {
  description = "IP address from ec2 created"
  value       = aws_instance.ec2-app[*].public_ip
}


output "ec2_dns" {
  description = "DNS from ec2 created"
  value       = aws_instance.ec2-app[*].public_dns
}