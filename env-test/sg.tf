resource "aws_security_group" "allow-ssh" {
  vpc_id      = aws_vpc.main.id
  name        = "allow-ssh"
  description = "security group that allows ssh and all egress traffic"
  egress { //alllow all outgoing traffic always
    from_port   = 0
    to_port     = 0
    protocol    = "-1" //all protocols, maybe only tcp or so
    cidr_blocks = ["0.0.0.0/0"] //all
  }

  ingress { // allow ingress on port 22
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "allow-ssh"
  }
}

