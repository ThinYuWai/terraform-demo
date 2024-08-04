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
  region = "ap-southeast-1" # Change this to your desired region
}

module "prereqs" {
  source = "../.."

  # --- Common --- #
  friendly_name_prefix = var.friendly_name_prefix
  common_tags          = var.common_tags

  create_ec2_ssh_keypair = true
  ec2_ssh_keypair_name   = var.ec2_ssh_keypair_name
  ec2_ssh_public_key     = var.ec2_ssh_public_key
}