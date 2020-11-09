provider "aws" {
	region = "us-east-2"
}

module "create_ec2" {
    source = "./modules/create_ec2"
    instance_type = "t2.nano"
    ami_id = data.aws_instance.running_server.ami
}

output "Server_Address"{
    value = module.create_ec2.ec2_server_dns
}
output "ami_used_to_create_server"{
    value = module.create_ec2.ec2_server_ami_id
}
output "ami_retrieved_from_data_source"{
    value = data.aws_instance.running_server.ami
}

data "aws_instance" "running_server" {
    filter {
        name = "tag:Name"
        values = ["KUL"]
    }
}