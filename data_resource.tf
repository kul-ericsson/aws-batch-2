data "aws_instance" "running_server" {
    filter {
        name = "tag:Name"
        values = [var.tagname]
    }
    #most_recent = "true"
    #owners = [""]
}