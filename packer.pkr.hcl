packer {
  required_plugins {
    amazon = {
      version = ">= 0.0.2"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

local "access_key" {
  expression = vault("/secret/data/aws/access_credentials", "access_key")
  sensitive  = true
}

local "secret_key" {
  expression = vault("/secret/data/aws/access_credentials", "secret_key")
  sensitive  = true
}

source "amazon-ebs" "ubuntu" {
  access_key    = local.access_key
  secret_key    = local.secret_key
  ami_name      = "packer-terraform-int-aws"
  instance_type = "t2.micro"
  region        = "us-east-2"
  source_ami_filter {
    filters = {
      name                = "ubuntu/images/*ubuntu-xenial-16.04-amd64-server-*"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["099720109477"]
  }
  ssh_username = "ubuntu"
}

build {
  name = "packer-terraform-int-aws"
  sources = [
    "source.amazon-ebs.ubuntu"
  ]
  provisioner "shell" {
    inline = [
      "echo Updating OS and Installing Nginx",
      "sleep 30",
      "sudo apt-get update",
      "sudo apt-get install -y nginx",
    ]
  }
}
