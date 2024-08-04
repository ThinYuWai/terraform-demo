# data aws_region
output "aws_region_name" {
  description = "Name of the selected region."
  value       = data.aws_region.master_account_singapore.name
}

output "aws_region_endpoint" {
  description = "EC2 endpoint for the selected region."
  value       = data.aws_region.master_account_singapore.endpoint
}

output "aws_region_description" {
  description = "Region's description in this format: Location (Region name)."
  value       = data.aws_region.master_account_singapore.description
}


# data aws_regions
output "aws_regions_id" {
  description = "Identifier of the current partition."
  value       = data.aws_regions.hellocloud_master_account.id
}

output "aws_regions_names" {
  description = "Names of regions that meets the criteria."
  value       = data.aws_regions.hellocloud_master_account.names
}
