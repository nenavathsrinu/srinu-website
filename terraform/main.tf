provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0120bca902526ae75" # Use latest Amazon Linux 2
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name
  vpc_security_group_ids = "${aws_security_group.web_sg.id}"
  tags = {
    Name = "${var.env_name}-web"
  }
}
