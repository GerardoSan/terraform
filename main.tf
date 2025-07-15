terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "mi_bucket" {
  bucket = "grbios141016" # Cambia por un nombre único si ya está en uso
}

resource "aws_s3_bucket_acl" "mi_bucket_acl" {
  bucket = aws_s3_bucket.mi_bucket.id
  acl    = "private"
}