provider "aws" {
  region = "eu-north-1"
  
}

provider "vault" {
  address = "http://13.50.5.78:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "a3ce1f6a-b1eb-2b4f-0355-1cc2054eb440"
      secret_id = "a265ed42-401c-d40a-e675-e6b45269fe2f"
    }
  } 
}

data "vault_kv_secret_v2" "example" {
  mount = "kv"
  name  = "test-secret"
}

resource "aws_instance" "name" {
  ami = "ami-042b4708b1d05f512"
  instance_type = "t3.micro"

  tags = {
    secret = data.vault_kv_secret_v2.example.data["username"]
  }
}