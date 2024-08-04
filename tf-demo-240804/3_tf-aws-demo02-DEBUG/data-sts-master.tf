data "aws_caller_identity" "master_programmatic_admin" {
  # provider = aws.sts-master-programmatic-admin # not required by default, unless we define # alias = "sts-master-programmatic-admin" in versions.tf
}

