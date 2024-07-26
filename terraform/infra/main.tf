provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "securitygroup" {
  name = "securitygroup"
  description = "Permitir acesso HTTP e acesso a Internet"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 65550
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
}

resource "aws_instance" "devOps_uece" {
  ami = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro" 
  user_data = file("user_data.sh")
  vpc_security_group_ids = [aws_security_group.securitygroup.id]
}