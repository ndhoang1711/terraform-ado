terraform {
  required_providers {
    azurerm = {
        version = ">=3.48.0"
        source = "hashicorp/azurerm"
    }
    azuredevops={
        source = "microsoft/azuredevops"
        version = ">=0.1.0"
    }
     azuread = {
      source = "hashicorp/azuread"
      version = "~> 1.0"
    }
  }


}