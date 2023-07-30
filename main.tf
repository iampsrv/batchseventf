provider "aws" {
  region = "us-east-1"
  
}


resource "aws_instance" "web1" {
    ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "ec2tfgithub"
  }
}

variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}


variable "ami_id" {
  type    = string
  default = "ami-053b0d53c279acc90"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

resource "aws_s3_bucket" "example" {
  bucket = "hellloookodkokdpas"
  tags = {
    Name        = "My terraform bucket"
    Environment = "Dev"
  }
}
