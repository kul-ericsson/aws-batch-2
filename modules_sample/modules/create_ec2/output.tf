output "ec2_server_dns" {
    description = "DNS Name for EC2 Server Procured"
    value = aws_instance.module_demo.public_dns
}