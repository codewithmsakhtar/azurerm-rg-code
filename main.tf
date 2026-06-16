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
  subscription_id = "772a80da-2bd7-43bd-8842-3b914f74c16a"
}


resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}
