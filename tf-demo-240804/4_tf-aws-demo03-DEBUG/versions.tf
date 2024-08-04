terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.58.0"
    }
  }
}

provider "aws" {
  # Configuration options
  profile = "master-programmatic-admin-role" # using IAM Role
  # alias = "sts-master-programmatic-admin"
}