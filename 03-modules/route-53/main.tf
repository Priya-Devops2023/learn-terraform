resource "aws_route53_record" "records" {
  zone_id  =  "Z082480628W9T5FTT67ES"
  name     = "test"
  type     = "A"
  ttl      = 30
  records  = [ var.private_ip ]
}

variable "private_ip" {}