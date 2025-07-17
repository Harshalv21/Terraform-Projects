provider "aws" {
  region = "eu-north-1"
  
}

resource "aws_instance" "harshal" {
  instance_type = "t3.micro"
  ami = "ami-042b4708b1d05f512"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket =  "harshal-bucket-s3buck"
  
}

resource "aws_dynamodb_table" "terraform-lock" {
  name         = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  } 
  
}