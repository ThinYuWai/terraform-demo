# go to
cd /Users/sai.linnthu/pov-terraform/aws-keypair-demo/examples/production

# generate `public_key`
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair

ssh-keygen

/Users/sai.linnthu/pov-terraform/aws-keypair-demo/examples/production/production-keypair

# As a result of that, we will get
production-keypair
production-keypair.pub

# copy the contents of `production-keypair.pub` and insert in `terraform.tfvars` as below. line 11

ec2_ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDLYvRErdwPUYcImGpe/NWmm8te/dx+sS2hSF86H6QTzgzHz0Ku6NwWleiMB2KJG5BVmLW/V4CbZ2zcrrDJV7dYQqdz1OQYhCMH11XGYaPEUw7yisDsGSEDlul0g2vZLFcOpV0fDDSgnZz/vUc3NypCyKfzebTyTe5juABulehKTnEUMuCsS3UZtCIjJpaHkQQgHciHD4Yv8XEwdVxJFnXbCc8+SFVuOlCf2X7f6VGw9MlLoRD5cA5QmO5vGxxienH1v9WhEDOQCDB6+KmhmIzrt+QoAyAUfIdz8LDRYpGz4x/7Q5X8LfUZNTHQku8RCKXALRB39ztcfn/Mhr14AmAkXwejT/A1eW+6wbZpjWgCzHy2gBr63aOJHC9ZsaBw30LvWtRwENEzvlRfZ7Z8hpcdyiRBBn2c5C+IJWvLA1pc8UwZcjM8SztejdYp4XHSXNXTYTaVOK+4zZ0nh+HOiLGVQDAyU8K1RleLuq8nSKLIv80lxvUdkJTbaXPgMqu7rLc= sai.linnthu@sai.linnthu-HY7CM4PXF5"

# insert in `main.tf` as below. line 25

  ec2_ssh_public_key = var.ec2_ssh_public_key


### Error

│ Error: Missing resource instance key
│ 
│   on ../../outputs.tf line 5, in output "aws_key_pair_id":
│    5:   value       = aws_key_pair.this.id
│ 
│ Because aws_key_pair.this has "count" set, its attributes must be accessed on specific instances.
│ 
│ For example, to correlate with indices of a referring resource, use:
│     aws_key_pair.this[count.index]
╵
╷
│ Error: Missing resource instance key
│ 
│   on ../../outputs.tf line 10, in output "aws_key_pair_arn":
│   10:   value       = aws_key_pair.this.arn
│ 
│ Because aws_key_pair.this has "count" set, its attributes must be accessed on specific instances.
│ 
│ For example, to correlate with indices of a referring resource, use:
│     aws_key_pair.this[count.index]
╵
╷
│ Error: Missing resource instance key
│ 
│   on ../../outputs.tf line 15, in output "aws_key_pair_keyname":
│   15:   value       = aws_key_pair.this.keyname
│ 
│ Because aws_key_pair.this has "count" set, its attributes must be accessed on specific instances.
│ 
│ For example, to correlate with indices of a referring resource, use:
│     aws_key_pair.this[count.index]
╵
╷
│ Error: Unsupported attribute
│ 
│   on ../../outputs.tf line 15, in output "aws_key_pair_keyname":
│   15:   value       = aws_key_pair.this.keyname
│ 
│ This object has no argument, nested block, or exported attribute named "keyname". Did you mean "key_name"?
╵
╷
│ Error: Missing resource instance key
│ 
│   on ../../outputs.tf line 20, in output "aws_key_pair_key_pair_id":
│   20:   value       = aws_key_pair.this.key_pair_id
│ 
│ Because aws_key_pair.this has "count" set, its attributes must be accessed on specific instances.
│ 
│ For example, to correlate with indices of a referring resource, use:
│     aws_key_pair.this[count.index]
╵
╷
│ Error: Missing resource instance key
│ 
│   on ../../outputs.tf line 25, in output "aws_key_pair_key_type":
│   25:   value       = aws_key_pair.this.type
│ 
│ Because aws_key_pair.this has "count" set, its attributes must be accessed on specific instances.
│ 
│ For example, to correlate with indices of a referring resource, use:
│     aws_key_pair.this[count.index]
╵
╷
│ Error: Unsupported attribute
│ 
│   on ../../outputs.tf line 25, in output "aws_key_pair_key_type":
│   25:   value       = aws_key_pair.this.type
│ 
│ This object has no argument, nested block, or exported attribute named "type".