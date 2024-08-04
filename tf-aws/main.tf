resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "terraform-vpc"
  }
}

resource "aws_key_pair" "tf_demo_key_pair" {
  key_name   = "tf-demo"
  public_key = file("/home/vagrant/terraform-cop/tf-aws/.ssh/ec2-tf.pub")
}