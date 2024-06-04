/*# Create Web Security Group
resource "aws_security_group" "lamp-sg" {
    name        = "webserver-sg"
    description = "Allow ssh"
    vpc_id      = aws_vpc.utc-app1.id
 
    ingress {
      description = "allow ssh VPC"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
   
    ingress {
    description = "http port"
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
      Name = "webserver-sg"
    }
}
*/