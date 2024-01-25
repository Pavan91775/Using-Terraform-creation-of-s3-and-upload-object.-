terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.33.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
  
}
resource "aws_s3_bucket" "xzpavan34" {
  bucket = "xzpavan34"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


resource "aws_s3_bucket_object" "object" {
  bucket = aws_s3_bucket.xzpavan34.id
  key    = "pavan.txt"
  source = "/Users/pavan/OneDrive/Desktop/terra1/pavan.txt"
}