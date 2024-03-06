resource "azurerm_resource_group" "example11" {
  name     = var.rg_name
  location = var.lcn
}


resource "azurerm_storage_account" "example" {
  name                     = var.stg_name
  resource_group_name      = azurerm_resource_group.example11.name
  location                 = azurerm_resource_group.example11.location
  account_tier            = var.stg_account_tier
  account_replication_type = var.stg_reptype

  tags = {
    environment = var.env
  }
}