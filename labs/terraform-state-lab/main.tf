terraform {
  backend "s3" {
    bucket       = "tf-lab-state-48213"
    key          = "lab/terraform.tfstate"
    region       = "us-east-2"
    encrypt      = true
    use_lockfile = true
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "practice" {
  bucket = "tf-lab-practice-48213"
}