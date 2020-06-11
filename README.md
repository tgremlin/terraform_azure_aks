# terraform_azure_aks
### Variables
The following variables are fed through a git ignored .tfvars file:
- ARM_CLIENT_ID = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
- ARM_CLIENT_SECRET = "XXXXXXXXXXXX"
- ARM_SUBSCRIPTION_ID = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
- ARM_TENANT_ID = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"

Execute using terraform apply -var-file="file.tfvars"

Other variables are provided at CLI prompt:
- resource_group_name
- cluster_name
- dns_prefix
- node_count

These variables are set with defaults, but can be overridden at the CLI with -var="vm_size="Standard_A4_v2" for example.
- vm_size (default set to "Standard_A2_v2"
- location (default set to "South Central US")


