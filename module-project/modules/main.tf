provider "aws" {
  region = "eu-north-1"  # Specify the AWS region
  
}

resource "aws_instance" "example" {
  ami = var.ami_value  # Use the variable for AMI ID
  instance_type = var.instance_type_value  # Use the variable for instance type
}

