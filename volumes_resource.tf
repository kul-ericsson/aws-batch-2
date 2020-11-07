resource "aws_ebs_volume" "ericsson-vol" {
	availability_zone = "us-east-2a"
	size = 10
	count = 2
	tags = {
		Name = "KUL"
	}
}

resource "aws_volume_attachment" "attach_volume_1"{
	count = 2
	volume_id = aws_ebs_volume.ericsson-vol[count.index].id
	instance_id = aws_instance.server_1[count.index].id
	device_name = "/dev/sdb"
	skip_destroy = "true"
}