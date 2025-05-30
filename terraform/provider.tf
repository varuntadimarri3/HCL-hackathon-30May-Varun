terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
    profile = "hclhackathon"
}

#terraform {
#  backend "s3" {
#    bucket = "hcl-hackathon-varun-tf-bucket"
#    key    = "terraform"
#    region = "us-east-1"
#  }
#}
