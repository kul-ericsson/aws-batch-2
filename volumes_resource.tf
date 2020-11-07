resource "aws_ebs_volume" "ericsson-vol" {
	availability_zone = var.aws_az
	size = 10
	count = var.server_coumt
	tags = {
		Name = var.tagname
	}
}

resource "aws_volume_attachment" "attach_volume_1"{
	count = var.server_coumt
	volume_id = aws_ebs_volume.ericsson-vol[count.index].id
	instance_id = aws_instance.server_1[count.index].id
	device_name = "/dev/sdb"
	skip_destroy = "true"
}