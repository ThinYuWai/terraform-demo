data "aws_iam_users" "master_account_iam_users" {
  # provider = aws.sts-master-programmatic-admin # not required by default, unless we define # alias = "sts-master-programmatic-admin" in versions.tf
}

