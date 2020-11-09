provider "aws" {
	region = "us-east-2"
}

module "create_ec2" {
    source = "./modules/create_ec2"
    instance_type = "t2.nano"
}

output "Server_Address"{
    value = module.create_ec2.ec2_server_dns
}