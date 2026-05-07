provider "aws" {
  region = "ap-southeast-1"
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

  # checkov:skip=CKV_AWS_18:Lab environment - logging not required
  # checkov:skip=CKV_AWS_144:Lab environment - replication not required
  # checkov:skip=CKV_AWS_145:Lab environment - default encryption is sufficient
  # checkov:skip=CKV_AWS_62:Lab environment - event notifications not required
  # checkov:skip=CKV2_AWS_6:Lab environment - public access block managed manually or not needed
  # checkov:skip=CKV2_AWS_61:Lab environment - lifecycle policy not required
  # checkov:skip=CKV_AWS_21:Lab environment - versioning not required
}