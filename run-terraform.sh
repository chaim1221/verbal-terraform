rm -rf .terraform
terraform init -force-copy -reconfigure -backend-config="backend.tf"

terraform $1
