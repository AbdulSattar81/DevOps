terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}  

#Configured the AWS provider
provider "aws" {
    region = "us-east-2"
}

#Create s3 bucket
resource "aws_s3_bucket" "first_bucket" {
  bucket = "piyushtutorial-bucket-12345"

  tags = {
    Name        = "My bucket 3.0"
    Environment = "Dev"
  }
}
