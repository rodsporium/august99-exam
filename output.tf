output "public_ip" {
  value       = aws_instance.august99.public_ip
  description = "The public IP of the server"
}
