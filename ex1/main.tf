terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name = "rg-handson-12345"
  location = "francecentral"
}

output "id" {
    value = azurerm_resource_group.rg.id
}
