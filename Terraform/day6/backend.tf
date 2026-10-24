terraform {

    backend "s3" {
    bucket         = "piyushtutorial-terraform-state"
    key            = "dev/terraform.tfstate"
    region         = "us-east-2"
    use_lockfile   =  true
    encrypt        = true
  }
}