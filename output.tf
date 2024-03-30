output "public_ip" {
  value = aws_instance.server1.public_ip
}
output "az" {
  value = aws_instance.server1.availability_zone
}

output "ssh-command" {
  value = "ssh -i utc-key.pem ec2-user@${aws_instance.server1.public_ip}"
}
