# go to
cd /Users/sai.linnthu/pov-terraform/aws-keypair-demo/examples/uat

# generate `public_key`
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair

ssh-keygen

/Users/sai.linnthu/pov-terraform/aws-keypair-demo/examples/uat/uat-keypair

# As a result of that, we will get
uat-keypair
uat-keypair.pub

# copy the contents of `uat-keypair.pub` and insert in `terraform.tfvars` as below. line 11

ec2_ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC/O6RZrsxRbRnaAIHvvoNn4jDGTGo5YRJceixr01yASnSzWxBjJzdZjsfvC97Nj3Tea16FVsqrWxEPX4SJWfrQ3nCmJLxXm0j6k22UYxkiifuOQEWRYd1jCdZ61O5c1J9S81ql9XbTtqH+/QlFzVngUJFQ7l+KZ68iLGPpHEWkhbuzXKlMYTvi5ulVU4C06OFcKSG4iqvxR44wuCnI3/nJXW+NzAYRw9W+ukGH+CTWkmEQv264oWePoehi0tT9FC+HU2ysQpEJTPW63KG2WniooI+qKLKjMTnI7uDXw82VUA0xdpHsF8C0KoSa3/jJYv+gH+Zcz17oB4asuRJbqDnuzcRE4krh+E5KgM/+eGoND4fhd2XhP15CCD7uz8QbWkokZlZ9QVvJS7e2M/bRbB1LKRzTg2vYAK5zRIBn7o62grsdw8Wj5mo502Ycf2Sqqey5RKZR162PYp4NWZEvb6shZZ5iyxCOIV9LPMUyJhrS2Krd8xZoYzEwMfVoLZondZs= sai.linnthu@sai.linnthu-HY7CM4PXF5"

# insert in `main.tf` as below. line 25

  ec2_ssh_public_key = var.ec2_ssh_public_key
