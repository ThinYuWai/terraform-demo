#------------------------------------------------------------------------------
# EC2 Key Pair
#------------------------------------------------------------------------------
output "aws_key_pair_id" {
  value       = module.prereqs.aws_key_pair_id
  description = "The key pair name."
}

output "aws_key_pair_arn" {
  value       = module.prereqs.aws_key_pair_arn
  description = "The key pair ARN."
}

output "aws_key_pair_key_name" {
  value       = module.prereqs.aws_key_pair_key_name
  description = "The key pair name."
}

output "aws_key_pair_key_pair_id" {
  value       = module.prereqs.aws_key_pair_key_pair_id
  description = "The key pair ID."
}

output "aws_key_pair_key_type" {
  value       = module.prereqs.aws_key_pair_key_type
  description = "The type of key pair."
}

