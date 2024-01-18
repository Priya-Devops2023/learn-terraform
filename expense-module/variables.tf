variable "components" {
  default = {
    frontend = {
      name = "frontend"
      instance_type = "t3.micro"
    }

    mysql = {
      name = "mysql"
      instance_type = "t3.small"
    }
    backend = {
      name = "backend"
    }
  }
}

variable "zone_id" {
  default = "Z082480628W9T5FTT67ES"
}

variable "vpc_security_group_ids" {
  default = ["sg-05760a73b326267cb"]
}