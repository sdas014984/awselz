provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "app" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = var.instance_type
  key_name = aws_key_pair.deployer.key_name
  associate_public_ip_address = false

  tags = {
    Name = "my-server"
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "yahoo-keypair"
  public_key = file("~/.ssh/id_rsa.pub")
}
