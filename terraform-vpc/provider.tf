terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.93.0"
    }
  }
  backend "s3" {
    bucket = "terraform-backend-remote-vpc-github-actions"
    key    = "Dev\terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}