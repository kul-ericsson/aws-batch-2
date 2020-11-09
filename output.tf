output "server_public_ip" {
	value = aws_instance.server_1.*.public_ip
}
output "ericsson_MYSQL_ENDPOINT" {
	value = aws_db_instance.ericsson_mysql.endpoint
}

output "running_server_public_ip" {
	value = data.aws_instance.running_server.public_ip
}