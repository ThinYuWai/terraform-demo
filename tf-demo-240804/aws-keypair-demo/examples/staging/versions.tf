terraform {
  required_version = ">= 1.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.54.0"
    }
  }
}

provider "aws" {
  region  = "ap-southeast-1"                 # Change this to your desired region
  profile = "master-programmatic-admin-role" # using IAM Role
}