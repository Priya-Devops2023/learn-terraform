resource "aws_instance" "frontend" {
  ami                     = "ami-0f3c7d07486cad139"
  instance_type           = "t3.micro"
  #vpc_security_group_ids  = ["sg-05760a73b326267cb"]

  tags = {
    Name = "frontend-dev"
  }
}

/* resource "aws_instance" "backend" {
  ami                     = "ami-0f3c7d07486cad139"
  instance_type           = "t3.micro"
  vpc_security_group_ids  = ["sg-05760a73b326267cb"]

  tags = {
    Name = "backend-dev"
  }
}

resource "aws_instance" "mysql" {
  ami                     = "ami-0f3c7d07486cad139"
  instance_type           = "t3.micro"
  vpc_security_group_ids  = ["sg-05760a73b326267cb"]

  tags = {
    Name = "mysql-dev"
  }
}*/