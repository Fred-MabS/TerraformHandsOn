terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
  # backend "azurerm" {
  #   resource_group_name = "rg-fred-test-001"
  #   storage_account_name = "stfredtest001"
  #   container_name = "handson"
  #   key = "handson.terraform.tfstate"
  # }
}

provider "azurerm" {
  features {}
}
