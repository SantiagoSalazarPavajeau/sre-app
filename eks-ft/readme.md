Run the terraform project locally without "terraform apply"

cd mock-eks
terraform init
terraform validate
terraform plan -var-file=mock.tfvars
