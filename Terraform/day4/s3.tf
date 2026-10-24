#Create s3 bucket
resource "aws_s3_bucket" "first_s3_state_bucket" {
  bucket = "piyushtutorial-terraform-state"

  tags = {
    Name        = "s3 state bucket"
    Environment = "Dev"
  }
}