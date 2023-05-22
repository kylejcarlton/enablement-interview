provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "packer" {
  ami           = "ami-08563c4b1daba2043"
  instance_type = "t2.micro"

  tags = {
    Name = "packer-instance"
  }
}
