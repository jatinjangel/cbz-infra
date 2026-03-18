output "public_ip" {
  description = "Public IP of Ubuntu EC2 instance"
  value       = aws_instance.web.public_ip
}

output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.web.id
}

output "ssh_command" {
  description = "SSH command to connect to Ubuntu EC2"
  value       = "ssh -i ~/.ssh/id_rsa ubuntu@${aws_instance.web.public_ip}"
}

output "http_url" {
  description = "HTTP URL to access the web server"
  value       = "http://${aws_instance.web.public_ip}"
}
