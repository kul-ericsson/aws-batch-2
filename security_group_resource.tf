resource "aws_security_group" "sg_1"{
	vpc_id = aws_vpc.kul-vpc.id
	name = "kul-sg"
	description = "Created from Terraform by Kul"
	egress {
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
	ingress {
		from_port = 22
		to_port = 22
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}
	tags = {
		Name = var.tagname
	}
}