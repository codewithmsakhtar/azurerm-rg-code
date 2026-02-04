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
  subscription_id = "1c31cbbc-25c4-40cf-8e4e-44be901aa7ef"
}


resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}