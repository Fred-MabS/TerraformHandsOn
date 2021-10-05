resource "azurerm_resource_group" "rg" {
  name = local.mabfactory.rg_name
  location = local.mabfactory.location
}