resource "aws_vpc" "kul-vpc" {
	cidr_block = "10.0.0.0/16"
	instance_tenancy = "default"
	enable_dns_support = "true"
	enable_dns_hostnames = "true"
	tags = {
		Name = var.tagname
	}
}

resource "aws_subnet" "public_sn"{
	vpc_id = aws_vpc.kul-vpc.id
	cidr_block = "10.0.1.0/24"
	map_public_ip_on_launch = "true"
	tags = {
		Name = "Public"
	}
}

resource "aws_subnet" "private_sn"{
	vpc_id = aws_vpc.kul-vpc.id
	cidr_block = "10.0.2.0/24"
	map_public_ip_on_launch = "true"
	tags = {
		Name = "Private"
	}
}

resource "aws_internet_gateway" "kul-gateway"{
	vpc_id = aws_vpc.kul-vpc.id
	tags = {
		Name = var.tagname
	}
}