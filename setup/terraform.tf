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
        source = "intergration/github"
        version = "~>4.0"
    }
  }

  backend "remote" {
    
  }
}