terraform {
  backend "s3" {
      bucket = "jongbok-terraform-bucket"
      key    = "terraform.state/terraform.tfstate"
      region = "us-east-1"
  }
}


provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"

  tags = {
    Name = "instance_jongbok"
  }
}