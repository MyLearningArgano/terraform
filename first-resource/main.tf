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

#EC2  terraform import aws_instance.<resource_name> <instance_id>
#terraform import aws_instance.My-Terraform-Instance i-0793d7928baee13a9
resource "aws_instance" "My-Terraform-Instance" {
    ami = "ami-0aebec83a182ea7ea"
    instance_type = "t2.micro"
    tags = {
      Name = "My-Terraform-Instance"
    }
}