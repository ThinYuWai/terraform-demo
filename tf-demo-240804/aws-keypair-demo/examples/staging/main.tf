module "prereqs" {
  source = "../.."

  # --- Common --- #
  friendly_name_prefix = var.friendly_name_prefix
  common_tags          = var.common_tags

  create_ec2_ssh_keypair = true
  ec2_ssh_keypair_name   = var.ec2_ssh_keypair_name
  ec2_ssh_public_key     = var.ec2_ssh_public_key
}