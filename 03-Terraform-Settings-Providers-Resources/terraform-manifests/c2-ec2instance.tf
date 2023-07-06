# Resource: EC2 Instance
resource "aws_instance" "myec2vm" {
  ami           = "ami-022e1a32d3f742bd8"
  instance_type = "t2.micro"
  user_data     = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}
