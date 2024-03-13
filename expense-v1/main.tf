# Creating an instance
resource "aws_instance" "frontend" {
  ami                     = var.ami
  instance_type           = var.instance_type
  vpc_security_group_ids  = var.vpc_security_group_ids

  tags = {
    Name = "frontend-dev"
  }
}

# Creating a DNS record
resource "aws_route53_record" "frontend" {
  name    = "frontend-dev"
  type    = "A"
  zone_id = var.zone_id
  ttl = 30
  records = [aws_instance.frontend.private_ip]
}
# Creating an instance
 resource "aws_instance" "backend" {
  ami                     = var.ami
  instance_type           = var.instance_type
  vpc_security_group_ids  = var.vpc_security_group_ids

  tags = {
    Name = "backend-dev"
  }
}

# Creating a DNS record
resource "aws_route53_record" "backend" {
  name    = "backend-dev"
  type    = "A"
  zone_id = var.zone_id
  ttl = 30
  records = [aws_instance.backend.private_ip]
}
# Creating an instance

resource "aws_instance" "mysql" {
  ami                     = var.ami
  instance_type           = var.instance_type
  vpc_security_group_ids  = var.vpc_security_group_ids

  tags = {
    Name = "mysql-dev"
  }
}
# Creating a DNS record
resource "aws_route53_record" "mysql" {
  name    = "mysql-dev"
  type    = "A"
  zone_id = var.zone_id
  ttl = 30
  records = [aws_instance.mysql.private_ip]
}