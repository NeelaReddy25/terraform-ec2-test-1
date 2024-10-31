terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.62.0"
    }
  }
  backend "aws" {
    bucket = "neela-remote-state"
    key = "ec2-test-module"
    region = "us-east-1"
    dynamodb_table = "neelareddy.locking"
  }
}

#providers authentication here
provider "aws" {
  region = "us-east-1"
}