init:
	@terraform init

plan:
	@terraform plan

apply:
	@terraform apply -auto-approve

destroy:
	@terraform destroy -auto-approve

validate:
	@terraform validate

fmt:
	@terraform fmt -recursive

output:
	@terraform output

show:
	@terraform show

aws-eks:
	@aws aws eks update-kubeconfig --region us-east-1 --name eksdevelopment-eks-cluster

aws-role