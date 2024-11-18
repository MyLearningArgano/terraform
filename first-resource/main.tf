provider "aws" {
  region = "ap-south-1"
}

#s3
resource "aws_s3_bucket" "terraform_bucket" {
  bucket = "argano-my-first-terraform-bucket"

  tags = {
    Name        = "TerraformBucket"
    Environment = "Dev"
  }
}

# VPC
resource "aws_vpc" "terraform_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "ExampleTerraformVPC"
  }
}
