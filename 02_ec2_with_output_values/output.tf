output "ec2_instance_public_ip" {
  description = "EC2 instnace public ip"
  value       = aws_instance.ec2-app[*].public_ip
  # sensitive = true
}

output "ec2_instance_private_ip" {
  description = "EC2 instnace private ip"
  value       = aws_instance.ec2-app[*].private_ip
}

output "ec2_security_groups" {
  description = "List security groups associatedwith EC2 isntance"
  value       = aws_instance.ec2-app[*].security_groups
}

output "ec2_instance_public_dns" {
  description = "EC2 instance public dns"
  value       = "http://${aws_instance.ec2-app.*.public_dns[0]}"
}