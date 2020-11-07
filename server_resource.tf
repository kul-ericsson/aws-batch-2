resource "aws_instance" "server_1"{
	ami = "ami-01e36b7901e884a10"
	instance_type = "t2.micro"
	tags = {
		Name = "KUL"
		Client = "Ericsson"
	}
	count = 2
	security_groups = [
		# Adding Dependency on the Security Group in Server
		aws_security_group.sg_1.name
	]
}