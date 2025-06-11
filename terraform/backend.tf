terraform {
  backend "s3" {
    bucket         = "lsg-terraform-state-bucket"
    key            = "env:/terraform.tfstate"  # replaced by Jenkins
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}