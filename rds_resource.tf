resource "aws_db_instance" "ericsson_mysql" {
  allocated_storage    = 10
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "8.0.20"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "admin"
  password             = "admin123"
  identifier		   = "ericsson-kul"
  publicly_accessible  = "true"
  skip_final_snapshot  = "true"
}