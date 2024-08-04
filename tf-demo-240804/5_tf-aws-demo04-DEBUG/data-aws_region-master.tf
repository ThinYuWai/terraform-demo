data "aws_region" "master_account_singapore" {
  # provider = aws.sts-master-programmatic-admin # not required by default, unless we define # alias = "sts-master-programmatic-admin" in versions.tf
}

data "aws_regions" "hellocloud_master_account" {
  # provider = aws.sts-master-programmatic-admin # not required by default, unless we define # alias = "sts-master-programmatic-admin" in versions.tf
}

