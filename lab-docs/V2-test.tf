
## Write your 1st terraform file
   provider "aws" {  
   region  = "us-east-1"
   }
resource "aws_instance" "demo-server" {
  ami           = "ami-01816d07b1128cd2d"
  instance_type = "t2.micro"
  key_name      = "terraform123"
  security_groups = [ "Terraform_sg" ]
  
 }
resource "aws_security_group" "Terraform_sg" {
  name        = "Terraform_sg"
  description = "Allow ssh inbound traffic"
  

  ingress {
    description = "allow ssh"
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
    Name = "allow_ssh"
  }
}
