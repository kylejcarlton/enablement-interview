data "vault_generic_secret" "access_credentials" {
  path = "secret/aws/access_credentials"
}

provider "aws" {
  region = "us-east-2"
  access_key = data.vault_generic_secret.access_credentials.data["access_key"]
  secret_key = data.vault_generic_secret.access_credentials.data["secret_key"]
}

resource "aws_instance" "packer" {
  ami           = "ami-"
  instance_type = "t2.micro"

  tags = {
    Name = "packer-instance"
  }
}
