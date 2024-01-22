terraform {
  backend "s3" {
    bucket = "s3-practice-devops"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "null_resource" "test" {}