resource "azurerm_resource_group" "network" {
  name     = var.network_resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
    count = var.need_vnet == true ? 1 : 0
    name = var.vnet_name
    location = var.location
    address_space = var.address_space
    resource_group_name = azurerm_resource_group.network.name
  
}