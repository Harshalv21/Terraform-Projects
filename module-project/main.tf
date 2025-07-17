provider "aws" {
  region = "eu-north-1"  # Specify the AWS region
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
}