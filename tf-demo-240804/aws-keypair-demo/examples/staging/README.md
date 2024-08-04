# go to
cd /Users/sai.linnthu/pov-terraform/aws-keypair-demo/examples/staging

# generate `public_key`
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair

ssh-keygen

/Users/sai.linnthu/pov-terraform/aws-keypair-demo/examples/staging/staging-keypair

# As a result of that, we will get
staging-keypair
staging-keypair.pub

# copy the contents of `staging-keypair.pub` and insert in `terraform.tfvars` as below. line 11

ec2_ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDDcEtVvcpt7zyxjPyzmL0v4GBMwyHypyAW5w5SgDg+Ql2Sk0Xx4OCOKS0y6r0oXjsQHKZ9IIkdIGYyNcXllKZPdj3qRbZnXRg7kwf5Yr28yDEgaAUGuhLT8ufg/6YNRlbxjeXH1O13MhLubCygAkWaFVhlKXKx2JbcLTLZAW8dnk9Gcke3uP3ytjGruH6vJQ7AikUuR5Qu+xNJE9Or4sF0GNoJzXyTkY0tY1vhOu6gsLmB8OrPIhOVIpKuvqOdobzKquyM9I9lyUcy8lbcY7nkjMAVF8t803dtLoqT6ePLUJcSZJILTgzPvhuKvsvjt5TNAq0dqHv3VyqL71CYpLLF9WLL7/pF9sRSbqdqwOA89mptG2BXQjpfqxlqv+TNOiHDfcUw0k9FeTPLJL0+WVFU6Fc+vUJ1WhmkQWgippk8GVfjK2EWRMmtSc8zMS48JPFkOz0FDu3LKfk/WLdAh8X39i0pvHTl/UrAJUG0lyfgvjZC6tmCMJbNPSlJ9jT7vs8= sai.linnthu@sai.linnthu-HY7CM4PXF5"

# insert in `main.tf` as below. line 25

  ec2_ssh_public_key = var.ec2_ssh_public_key
