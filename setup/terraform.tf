terraform {
  required_providers {
    azurerm = {
        version = ">=0.1.0"
        source = "hashicorp/azurerm"
    }
    azuredevops={
        source = "microsoft/azuredevops"
        version = ">=0.1.0"
    }
    git={
        source = "intergrations/github"
        version = "~>4.0"
    }
  }

  backend "remote" {
    organization = "hoang-in-the-cloud"
    workspaces {
      name = "terraform-ado"
    }
  }
}