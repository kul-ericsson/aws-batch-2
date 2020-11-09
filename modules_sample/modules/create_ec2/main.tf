resource "aws_instance" "module_demo"{
    ami = "ami-01e36b7901e884a10"
	instance_type = var.instance_type
	key_name = "ericsson-kul"
    tags = {
        Name = var.tagname
        Client = "Ericsson"
    }
}