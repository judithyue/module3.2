provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  backend "s3" {
    bucket = "sctp-ce12-tfstate-bucket"
    key    = "ju-terraform.tfstate"
    region = "ap-southeast-1"
  }
}

resource "aws_s3_bucket" "s3_tf" {
  bucket  =   "ju-super-bucket"
}

