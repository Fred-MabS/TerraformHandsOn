resource "azurerm_resource_group" "rg_mabfactory" {
  name = local.mabfactory.rg_name
  location = local.mabfactory.location
}

## Create storage for MAbFactoryExperiments table
resource "azurerm_storage_account" "mabfactory_stio" {
  name                     = local.mabfactory.stio
  resource_group_name      = azurerm_resource_group.rg_mabfactory.name
  location                 = azurerm_resource_group.rg_mabfactory.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  # account_replication_type = "GRS"
}

## Create MAbFactoryExperiments table
resource "azurerm_storage_table" "MAbFactoryExperiments" {
  name = local.mabfactory.experimentTableName
  storage_account_name = azurerm_storage_account.mabfactory_stio.name
}
