provider "aws" {
  region     = "us-east-1"
  access_key = "met ta cle"
  secret_key = "met ta cle"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0057d8e6fb0692b80"
  instance_type = "t2.micro"
  key_name      = "devops-damtoti"
  tags = {
    Name = "ec2-damtoti"
  }
  root_block_device {
    delete_on_termination = true
  }
}
