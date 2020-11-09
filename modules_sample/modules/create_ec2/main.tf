resource "aws_instance" "module_demo"{
    ami = var.ami_id
	instance_type = var.instance_type
	key_name = "ericsson-kul"
    tags = {
        Name = var.tagname
        Client = "Ericsson"
    }
}