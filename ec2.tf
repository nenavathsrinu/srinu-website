provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "jenkins_ec2" {
  ami           = "ami-0120bca902526ae75"
  instance_type = "t2.micro"
  tags = {
    Name = "Jenkins EC2"
  }
}

terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "ec2/terraform.tfstate"
    region         = "ap-south-1"
   #dynamodb_table = "terraform-locks"    # Optional for locking
    encrypt        = true
  }
}

