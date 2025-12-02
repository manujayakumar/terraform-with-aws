terraform {

  backend "s3" {
    bucket       = "manujayakumar96-terraform-state"
    key          = "dev/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "first-bucket" {
  bucket = "manujayakumar96-first-bucket"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
