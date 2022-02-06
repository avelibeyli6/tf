resource "aws_security_group" "web" {

  name = "tf-web"

  ingress {
    from_port   = 80
    to_port     = 443
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  description = "Allows access to 80 port from Internet"

  tags = {
    Name = "web-sg"
  }
}

resource "aws_security_group" "ssh" {

  name = "tf-ssh"

  ingress {
    from_port   = 22
    protocol    = "TCP"
    to_port     = 22
    cidr_blocks = ["5.197.246.0/32"]
  }

  description = "Allows access to 22 port from Internet"

  tags = {
    Name = "ssh-sg"
  }
}

