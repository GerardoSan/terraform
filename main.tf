provider "aws" {
  region = "us-east-1" 
}

resource "aws_s3_bucket" "mi_bucket" {
  bucket = "grbios141016" 
}
