terraform {
  required_version = ">= 0.14.9"
}

resource "aws_db_instance" "example" {
  identifier_prefix   = "smaller-module"
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t2.micro"
  name                = var.db_name
  username            = var.db_username
  password            = var.db_password
  skip_final_snapshot = true
}
