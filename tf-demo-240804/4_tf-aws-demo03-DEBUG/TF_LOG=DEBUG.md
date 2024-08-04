https://developer.hashicorp.com/terraform/internals/debugging

TRACE
DEBUG
INFO
WARN
ERROR

export TF_LOG_CORE=TRACE
export TF_LOG_PROVIDER=TRACE

export TF_LOG_CORE=INFO
export TF_LOG_PROVIDER=INFO

export TF_LOG=TRACE

# DEBUG is good enough
export TF_LOG_CORE=DEBUG
export TF_LOG_PROVIDER=DEBUG

# this demo is using IAM Role in versions.tf


# init
export TF_LOG=DEBUG
export TF_LOG_PATH=/Users/sai/hello-terraform/4_tf-aws-demo03-DEBUG/1-terraform_init.log
terraform init

# fmt
export TF_LOG=DEBUG
export TF_LOG_PATH=/Users/sai/hello-terraform/4_tf-aws-demo03-DEBUG/2-terraform_fmt.log
terraform fmt

# validate (this won't communicate to Terraform Plugin Provider API - in this case is AWS API)
export TF_LOG=DEBUG
export TF_LOG_PATH=/Users/sai/hello-terraform/4_tf-aws-demo03-DEBUG/3-terraform_validate.log
terraform validate

# plan
export TF_LOG=DEBUG
export TF_LOG_PATH=/Users/sai/hello-terraform/4_tf-aws-demo03-DEBUG/4-terraform_plan.log
terraform plan

# apply
export TF_LOG=DEBUG
export TF_LOG_PATH=/Users/sai/hello-terraform/4_tf-aws-demo03-DEBUG/5-terraform_apply.log
terraform apply -auto-approve