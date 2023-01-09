resource "aws_instance" "ec2demo" {
  ami           = "ami-03a45a5ac837f33b7"
  instance_type = "t4g.micro"
  user_data     = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}