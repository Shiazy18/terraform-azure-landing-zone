data "azurerm_virtual_network" "destination" {
  name = var.destination_virtual_network_name
  resource_group_name = var.network_resource_group_name
}