terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.52.0"
    }
  }
  backend "azurerm" {  
    resource_group_name  = "rg-arif"
    storage_account_name = "rfbackendstorage"
    container_name       = "tfstate"
    key                  = "assignment.tfstate" 
  }
}


provider "azurerm" {
  features {}
  subscription_id = "a201d6ce-420d-42ed-93d7-34c69de03add"
}