terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.70.0"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sample" {
  ami = "ami-0fff1b9a61dec8a5f"
  instance_type = "t2-micro"

  tags = {
    Name = "Aws-instance"
  }
}