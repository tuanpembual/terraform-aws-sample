terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.9.0"
    }
  }

  required_version = "~> 1.2.1"

  backend "s3" {
    bucket = "estu-tfstate"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
    profile = "estu"
  }
}

provider "aws" {
  profile = "estu"
  region = "ap-southeast-1"
}
