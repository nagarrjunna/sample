provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "myrg" {
  name = var.rgname
  location = var.region
}

resource "azurerm_virtual_network" "myvnet" {
  name = var.vnet_name
  location = var.region
  resource_group_name = azurerm_resource_group.myrg.name
  address_space = [ var.vnet_cidr ]
}