terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "myweatherbucket-1234567"
    key    = "terraform.tfstate"
    region = "eu-central-1"
  }
  backend "s3" {
    bucket = "myspotifybucket-1234567"
    key    = "terraform.tfstate"
    region = "eu-central-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
}