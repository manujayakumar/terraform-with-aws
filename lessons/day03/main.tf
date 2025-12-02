terraform {
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

resource "aws_s3_bucket" "example" {
  bucket = "manujayakumar96-first-bucket"

  tags = {
    Name        = "My bucket 2.0"
    Environment = "Dev"
  }
}
