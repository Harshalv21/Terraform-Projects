provider "aws" {
  region = "eu-north-1"
  
}

variable "ami" {
  description = "value of the AMI to use for the instance"
}

variable "instance_type" {
  description = "value of the instance type to use for the instance"
  type = map(string)
  default = {
    "dev" = "t3.micro"
    "stage" = "t3.micro"
    "prod" = "t2.large"
  }
}

module "ec2_instance" {
  source        = "./modules/ec2_instance"
  ami           = var.ami
  instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
}