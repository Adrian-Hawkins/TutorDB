resource "aws_ssm_parameter" "testCICD" {
  name = "testCICD"
  type = "String"
  value = "bar"
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


resource "aws_security_group" "allow_mssql" {
  name        = "allow_mssql"

  ingress {
    from_port   = 1433
    to_port     = 1433
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_mssql"
    owner = "adrian.hawkins@bbd.co.za"
    created-using = "terraform"
  }
}

resource "aws_db_instance" "tutordb" {
  identifier             = "tutordb"
  engine                 = "sqlserver-ex"
  engine_version         = "14.00.3465.1.v1"
  instance_class         = "db.t2.micro"
  allocated_storage      = 20
  storage_type           = "gp2"
  publicly_accessible    = true
  username               = "admin"
  password               = "db39e8c15d5ef228"
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.allow_mssql.id]
  provisioner "local-exec" {
    command = <<-EOT
      sqlcmd -S ${self.endpoint} -U ${self.username} -P '${self.password}' -Q "CREATE DATABASE root;";
    EOT
  }
  tags = {
    owner         = "adrian.hawkins@bbd.co.za"
    created-using = "terraform"
  }

}
