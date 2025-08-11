data "azurerm_virtual_network" "destination" {
  name = var.destination_virtual_network_name
  resource_group_name = azurerm_resource_group.network.name
}