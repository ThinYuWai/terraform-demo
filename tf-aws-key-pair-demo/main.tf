# data "local_file" "tf_demo_public_key" {
#   filename = "/home/vagrant/terraform-cop/tf-aws/.ssh/ec2-tf.pub"
# }
resource "local_file" "tf_demo_public_key" {
  content = "tf_demo_public_key"
  filename = "/home/vagrant/terraform-cop/tf-aws/.ssh/ec2-tf.pub"
}
# resource "aws_key_pair" "tf_demo_key_pair" {
#   key_name   = "tf-demo"
#   public_key = data.local_file.tf_demo_public_key.content
# }