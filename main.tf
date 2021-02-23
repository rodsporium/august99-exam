terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "ap-southeast-1"
}

resource "aws_instance" "august99" {
  ami           = "ami-0e2e44c03b85f58b3"
  instance_type = "t2.micro"
  tags = {
    Name = "august99"
  }
  user_data              = <<-EOF
		#!/bin/bash
                yum install httpd -y
		echo $(ec2-metadata -i | cut -f2 -d:) > /var/www/html/index.html
                systemctl start httpd
                systemctl enable httpd
		EOF
  vpc_security_group_ids = [aws_security_group.example.id]
}

resource "aws_security_group" "example" {
  name = "sample secg"

  ingress {
    protocol    = "tcp"
    from_port   = 80
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
