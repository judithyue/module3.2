provider "aws" {
  region  = "ap-southeast-1"
}

terraform {
  required_version = ">= 1.0"
  backend "s3" {
    bucket = "sctp-ce12-tfstate-bucket"
    key    = "ju-terraform.tfstate"
    region = "ap-southeast-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0.0"
    }
  }
}

resource "aws_s3_bucket" "s3_tf" {
  bucket = "ju-super-bucket"
}