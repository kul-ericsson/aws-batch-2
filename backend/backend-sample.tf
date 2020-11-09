provider "aws" {
	region = "us-east-2"
}

terraform {
    backend "s3" {
        bucket = "kul-terraform-backend"
        key = "kul-terraform"
        region = "us-east-2"
    }
}

resource "aws_instance" "backend_demo"{
    ami = "ami-01e36b7901e884a10"
	instance_type = "t2.micro"
	key_name = "ericsson-kul"
    tags = {
        Name = "Kul_Backend_Demo"
        Client = "Ericsson"
    }
}