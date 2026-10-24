# Configure the AWS Provider
terraform {
    backend "s3" {
    bucket         = "piyushtutorial-terraform-state"
    key            = "dev/terraform.tfstate"
    region         = "us-east-2"
    use_lockfile   =  true
    encrypt        = true
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  # Configuration options
    region = "us-east-2"
}

#Set the Variable
#setting up the variable for the term environment so that we can call it whenever we want the value to be "dev". 
variable "environment" { 
    default = "dev"
    type = string
}

# Create s3 bucket 
resource "aws_s3_bucket" "first_s3_bucket" {
  bucket = "piyushtutorial-bucket-12345"
  tags = {
    Environment = var.environment
    Name        = "My s3 state bucket"
    
  }
}

#Create a VPC
resource "aws_vpc" "sample" {
    cidr_block = "10.0.0.0/24"
    tags = {
        Environment = var.environment
        Name = "Dec_VPC"
    }
}

#Create ec2 instance
resource "aws_ec2_instance" "example" {
    ami = "ami-0e5497a77ef21b5ac"
    instance_type = "t3.micro"
    subnet_id = aws_subnet.sample.id

    tags = {
        Environment = var.environment
        Name = "Dev-EC2-Instance"
    }
}


