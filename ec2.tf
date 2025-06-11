echo 'provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "jenkins_ec2" {
  ami           = "ami-03bb6d83c60fc5f7c"
  instance_type = "t2.micro"

  tags = {
    Name = "jenkins-ec2"
    Project = "DevOps-Pipeline"
  }
}' > main.tf

# Push to GitHub
git add main.tf
git commit -m "Add Terraform to launch EC2"
git push origin main

