variable "ado_org_service_url" {
  type        = string
  description = "Org service url for Azure DevOps"
  default = "https://dev.azure.com/ndhoang1117"
}

variable "ado_github_repo" {
  type        = string
  description = "Name of the repository in the format <GitHub Org>/<RepoName>"
  default     = "ndhoang1711/terraform-ado"
}

variable "ado_pipeline_yaml_path_1" {
  type        = string
  description = "Path to the yaml for the first pipeline"
  default     = "vnet/azure-pipelines.yaml"
}

variable "ado_github_pat" {
  type        = string
  description = "Personal authentication token for GitHub repo"
  sensitive   = true
  default = "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"
}

variable "prefix" {
  type        = string
  description = "Naming prefix for resources"
  default     = "tacos"
}

variable "az_location" {
  type    = string
  default = "southeastasia"
}

variable "az_container_name" {
  type        = string
  description = "Name of container on storage account for Terraform state"
  default     = "terraform-state"
}

variable "az_state_key" {
  type        = string
  description = "Name of key in storage account for Terraform state"
  default     = "terraform.tfstate"
}

variable "az_client_id" {
  type        = string
  description = "Client ID with permissions to create resources in Azure, use env variables"
  default = "379567d6-0c36-40ab-ac67-127c6b72084a"
}

variable "az_client_secret" {
  type        = string
  description = "Client secret with permissions to create resources in Azure, use env variables"
  default = "Txc8Q~N5WWGefnXmFxSPG.o6hQZVCSBzwQIBJb.h"
}

variable "az_subscription" {
  type        = string
  description = "Client ID subscription, use env variables"
  default = "ff064279-f4bc-47a0-a8be-58ce33a49e9f"
}

variable "az_tenant" {
  type        = string
  description = "Client ID Azure AD tenant, use env variables"
  default = "e9a05115-63e5-4a7c-925e-7fbc07780c98"
}

resource "random_integer" "suffix" {
  min = 10000
  max = 99999
}

locals {
  ado_project_name        = "${var.prefix}-project-${random_integer.suffix.result}"
  ado_project_description = "Project for ${var.prefix}"
  ado_project_visibility  = "private"
  ado_pipeline_name_1     = "${var.prefix}-pipeline-1"

  az_resource_group_name  = "${var.prefix}${random_integer.suffix.result}"
  az_storage_account_name = "${lower(var.prefix)}${random_integer.suffix.result}"

}