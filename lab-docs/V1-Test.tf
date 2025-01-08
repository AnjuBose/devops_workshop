
## Write your 1st terraform file
   provider "aws" {
  
   region  = "us-east-1"
   }
 resource "aws_instance" "demo-server" {
  ami           = "ami-01816d07b1128cd2d"
  instance_type = "t2.micro"
  key_name      = "terraform123"
 }

