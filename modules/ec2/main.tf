provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "my-instance" {
  ami                    = var.ec2_ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.ssh_access.id]

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "ssh_access" {
  name        = "ssh-access-sg"
  description = "Allow SSH inbound traffic"

  ingress {
    description = "SSH access from anywhere"
    from_port   = 22
    to_port     = 22
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
    Name = "ssh-access-sg"
  }
}