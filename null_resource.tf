resource "null_resource" "get_public_ip" {
	count = var.server_coumt
	provisioner "local-exec" {
		command = "echo ${aws_instance.server_1[0].public_ip} > public_ip.txt"
	}
	triggers = {
		server_id = aws_instance.server_1[0].id
	}
	provisioner "file" {
		connection {
			type = "ssh"
			user = "centos"
			private_key = file("C:/training/ericsson/aws/batch-1/ericsson-kul.pem")
			host = aws_instance.server_1[0].public_ip
		}
		source = "sqlscript.sql"
		destination = "/tmp/sqlscript.sql"
	}
	provisioner "remote-exec" {
		connection {
			type = "ssh"
			user = "centos"
			private_key = file("C:/training/ericsson/aws/batch-1/ericsson-kul.pem")
			host = aws_instance.server_1[count.index].public_ip
		}
		inline = [
			"mysql -h ${aws_db_instance.ericsson_mysql.address} -u ${mysql_user.dbuser.user} -pindia@123 -D ${mysql_database.kul.name} < /tmp/sqlscript.sql"
		]
	}
}