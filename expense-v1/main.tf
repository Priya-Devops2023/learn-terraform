# Creating an instance
resource "aws_instance" "frontend" {
  ami                     = "ami-0f3c7d07486cad139"
  instance_type           = "t3.micro"
  vpc_security_group_ids  = ["sg-05760a73b326267cb"]

  tags = {
    Name = "frontend-dev"
  }
}

# Creating a DNS record
resource "aws_route53_record" "frontend" {
  name    = "frontend-dev"
  type    = "A"
  zone_id = "Z082480628W9T5FTT67ES"
  ttl = 30
}
# Creating an instance
 resource "aws_instance" "backend" {
  ami                     = "ami-0f3c7d07486cad139"
  instance_type           = "t3.micro"
  vpc_security_group_ids  = ["sg-05760a73b326267cb"]

  tags = {
    Name = "backend-dev"
  }
}

# Creating a DNS record
resource "aws_route53_record" "backend" {
  name    = "backend-dev"
  type    = "A"
  zone_id = "Z082480628W9T5FTT67ES"
  ttl = 30
}
# Creating an instance

resource "aws_instance" "mysql" {
  ami                     = "ami-0f3c7d07486cad139"
  instance_type           = "t3.micro"
  vpc_security_group_ids  = ["sg-05760a73b326267cb"]

  tags = {
    Name = "mysql-dev"
  }
}
# Creating a DNS record
resource "aws_route53_record" "mysql" {
  name    = "mysql-dev"
  type    = "A"
  zone_id = "Z082480628W9T5FTT67ES"
  ttl = 30
}