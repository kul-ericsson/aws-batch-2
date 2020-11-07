resource "aws_ebs_volume" "ericsson-vol" {
	availability_zone = "us-east-2a"
	size = 10
	count = 2
	tags = {
		Name = "KUL"
	}
}