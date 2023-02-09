# project_name = sample

init:
	terraform init -reconfigure

plan:
	terraform plan \
		-var-file=shared_vars.tfvars

apply:
	terraform apply \
		-var-file=shared_vars.tfvars \
		-auto-approve

plan-destroy:
	terraform plan -destroy \
		-var-file=shared_vars.tfvars 

destroy:
	terraform destroy \
		-var-file=shared_vars.tfvars \
		-auto-approve

outputs:
	terraform output

fmt:
	terraform fmt

validate:
	terraform validate
