provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0120bca902526ae75" # Use latest Amazon Linux 2
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name
    security_groups = [aws_security_group.web_sg.name]
  tags = {
    Name = "${var.env_name}-web"
  }
}
