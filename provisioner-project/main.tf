provider "aws" {
  region = "eu-north-1"
  
}

variable "cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

resource "aws_key_pair" "terraform_key" {
  key_name   = "terraform_key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_vpc" "my-vpc" {
  cidr_block = var.cidr
}

resource "aws_subnet" "sub1" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "eu-north-1a"
  map_public_ip_on_launch = true
}

resource "aws_internet_gateway" "myig" {
  vpc_id = aws_vpc.my-vpc.id
}

resource "aws_route_table" "RT" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myig.id
  }
}

resource "aws_route_table_association" "rta1" {
  subnet_id      = aws_subnet.sub1.id
  route_table_id = aws_route_table.RT.id
}

resource "aws_security_group" "webSg" {
  name        = "web"
  vpc_id      = aws_vpc.my-vpc.id

  ingress {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "HTTP from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
tags = {
    Name = "webSg"
  }
}

resource "aws_instance" "ec2" {
  instance_type = "t3.micro"
  ami = "ami-042b4708b1d05f512"
  key_name = aws_key_pair.terraform_key.key_name
  vpc_security_group_ids = [aws_security_group.webSg.id]
  subnet_id = aws_subnet.sub1.id

  connection {
    type = "ssh"
    user = "ubuntu"
    private_key = file("~/.ssh/id_rsa") 
    host = self.public_ip
  }

  provisioner "file" {
    source = "app.py"
    destination = "/home/ubuntu/app.py"
  }
 provisioner "remote-exec" {
  inline = [
    "sudo apt update -y",
    "sudo apt install -y python3-pip python3-venv",
    "python3 -m venv /home/ubuntu/venv",
    "/home/ubuntu/venv/bin/pip install flask",
    "nohup /home/ubuntu/venv/bin/python /home/ubuntu/app.py > /home/ubuntu/app.log 2>&1 &"
  ]
 }
}