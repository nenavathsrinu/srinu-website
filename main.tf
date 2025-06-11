provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "jenkins_ec2" {
  ami           = "ami-0120bca902526ae75" # Amazon Linux 2023 AMI in ap-south-1
  instance_type = "t2.micro"

  tags = {
    Name = "jenkins-ec2"
    Project = "DevOps-Pipeline"
  }
}

