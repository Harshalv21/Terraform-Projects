provider "aws" {
  region = "eu-north-1"
  
}

variable "ami" {
  description = "value of the AMI to use for the instance"
}

variable "instance_type" {
  description = "value of the instance type to use for the instance"
  }

resource "aws_instance" "example" {
  ami = var.ami
  instance_type = var.instance_type
}