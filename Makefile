TF_PLAN :=../tfplan/tfplan
TF_VARS :=../tfvars/terraform.tfvars

tf-init:
	terraform -chdir=terraform init -backend-config="bucket=$$TF_BACKEND_BUCKET" -backend-config="region=$$TF_BACKEND_REGION"
tf-init-reconfigure:
	terraform -chdir=terraform init -backend-config="bucket=$$TF_BACKEND_BUCKET" -backend-config="region=$$TF_BACKEND_REGION" -reconfigure
tf-init-upgrade:
	terraform -chdir=terraform init -backend-config="bucket=$$TF_BACKEND_BUCKET" -backend-config="region=$$TF_BACKEND_REGION" -upgrade
tf-plan:
	terraform -chdir=terraform plan -var="aws_region=$$TF_BACKEND_REGION" -var-file=$(TF_VARS) -out=$(TF_PLAN)
tf-plan-destroy:
	terraform -chdir=terraform plan -var="aws_region=$$TF_BACKEND_REGION" -var-file=$(TF_VARS) -out=$(TF_PLAN) -destroy
tf-apply:
	terraform -chdir=terraform apply $(TF_PLAN)
tf-fmt:
	terraform -chdir=terraform fmt -recursive
