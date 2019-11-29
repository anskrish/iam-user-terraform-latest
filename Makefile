all: plan

set-cxnp:
	rm -f .terraform/terraform.tfstate
	terraform init --backend-config="key=unit/226720710302/terraform.tfstate"

plan-cxnp:
	terraform plan -out=cxnp.out -var-file=cpcxnp.tfvars

apply-cxnp:
	terraform apply -var-file=cpcxnp.tfvars -auto-approve 

destroy-cxnp:
	terraform destroy -var-file=cpcxnp.tfvars -auto-approve
clean:
	rm -f *.tfvars
	rm -f *.out

