output "tf_demo_key_pair" {
  value = aws_key_pair.tf_demo_key_pair.id
}

output "tf_demo_key_pair_arn" {
  value = aws_key_pair.tf_demo_key_pair.arn
}

output "tf_demo_key_pair_name" {
  value = aws_key_pair.tf_demo_key_pair.key_name
}

output "tf_demo_key_pair_id" {
  value = aws_key_pair.tf_demo_key_pair.key_pair_id
}

output "tf_demo_key_pair_type" {
  value = aws_key_pair.tf_demo_key_pair.key_type
}

output "tf_demo_key_pair_fingerprint" {
  value = aws_key_pair.tf_demo_key_pair.fingerprint
}