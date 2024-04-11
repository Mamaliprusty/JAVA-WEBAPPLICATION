terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      
    }
  }

  backend "s3" {
    bucket         = "webproject1"
    key            = "jenkins/terraform.tfstate"
    region         = "us-east-2"

  }
}

provider "aws" {
  region = "us-east-2"
}
