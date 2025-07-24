terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }

   backend "azurerm" {
    
    resource_group_name  = "rg-shineindia"          
    storage_account_name = "shineindiasg"                              
    container_name       = "shineindia-container"                               
    key                  = "shineindia.tfstate"                
}

}

provider "azurerm" {
  features {
    
  }
  subscription_id = "f96f2e3b-2cc8-4e5e-8ed9-4afb664bb5a8"
}


resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}