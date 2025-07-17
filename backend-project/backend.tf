terraform {
  backend "s3" {
    bucket = "harshal-bucket-s3buck"
    key    = "harshal/terraform.tfstate"
    region = "eu-north-1"
    dynamodb_table = "terraform-lock"
  }
}
