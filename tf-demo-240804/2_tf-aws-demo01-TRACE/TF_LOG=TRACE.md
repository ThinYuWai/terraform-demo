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


# init
export TF_LOG=TRACE
export TF_LOG_PATH=/Users/sai/hello-terraform/2_tf-aws-demo01-TRACE/1-terraform_init.log
terraform init

# fmt
export TF_LOG=TRACE
export TF_LOG_PATH=/Users/sai/hello-terraform/2_tf-aws-demo01-TRACE/2-terraform_fmt.log
terraform fmt

# validate
export TF_LOG=TRACE
export TF_LOG_PATH=/Users/sai/hello-terraform/2_tf-aws-demo01-TRACE/3-terraform_validate.log
terraform validate

# plan
export TF_LOG=TRACE
export TF_LOG_PATH=/Users/sai/hello-terraform/2_tf-aws-demo01-TRACE/4-terraform_plan.log
terraform plan

# apply
export TF_LOG=TRACE
export TF_LOG_PATH=/Users/sai/hello-terraform/2_tf-aws-demo01-TRACE/5-terraform_apply.log
terraform apply -auto-approve