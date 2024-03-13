variable "ami" {
  default = "ami-0f3c7d07486cad139"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "vpc_security_group_ids" {
  default = ["sg-05760a73b326267cb"]
}

variable "zone_id" {
  default = "Z082480628W9T5FTT67ES"
}