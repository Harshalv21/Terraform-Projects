output "instance_public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.example.public_ip
}
