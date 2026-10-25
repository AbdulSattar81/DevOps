#Create ec2 instance
resource "aws_ec2_instance" "example" {
  count         = 1
  ami           = "resolve:"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.sample.id

  tags = {
    Environment = var.environment
    Name        = "Dev-EC2-Instance"
  }
}


