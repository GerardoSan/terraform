provider "aws" {
  region = "us-east-1" # Cambia la región si lo necesitas
}

resource "aws_s3_bucket" "mi_bucket" {
  bucket = "nombre-unico-de-tu-bucket-12345" # Cambia este nombre por uno único
  acl    = "private"
}