provider "aws" {
  region = "eu-west-1"
  access_key = ""
  secret_key = ""
}

resource "aws_default_vpc" "default_vpc" {
  tags = {
    Name = "default_vpc"
  }
}

data "aws_availability_zones" "available_zones" {
  
}

resource "aws_default_subnet" "subnet_az1" {
  availability_zone = data.aws_availability_zones.available_zones.names[0]
}

resource "aws_default_subnet" "subnet_az2" {
  availability_zone = data.aws_availability_zones.available_zones.names[1]
}

resource "aws_db_instance" "tutordb" {
  identifier             = "tutordb"
  engine                 = "sqlserver-ex"
  engine_version         = "14.00.3465.1.v1"
  instance_class         = "db.t2.micro"
  allocated_storage      = 20
  storage_type           = "gp2"
  publicly_accessible    = false
  username               = "admin"
  password               = "db39e8c15d5ef228"
  tags = {
    owner         = "adrian.hawkins@bbd.co.za"
    created-using = "terraform"
  }

}
