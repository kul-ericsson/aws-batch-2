resource "null_resource" "get_public_ip" {
	provisioner "local-exec" {
		command = "echo ${aws_instance.server_1[0].public_ip} > public_ip.txt"
	}
	triggers = {
		server_id = aws_instance.server_1[0].id
	}
}