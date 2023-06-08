terraform {
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
provider "aws" {
  region = "ap-southeast-1"
}
resource "aws_s3_bucket" "backend" {
  bucket = "${var.Component}-${var.Environment}-backend-bucket"
  tags = {
    Component   = "${var.Component}"
    Environment = "${var.Environment}"
  }
}
