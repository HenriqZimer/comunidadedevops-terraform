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