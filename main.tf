provider "aws" {
  region = "us-east-1"
  
}


resource "aws_instance" "web1" {
    ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "HelloWorld"
  }
}




variable "ami_id" {
  type    = string
  default = "ami-053b0d53c279acc90"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

