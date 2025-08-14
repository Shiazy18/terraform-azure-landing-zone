data "azurerm_virtual_network" "vnet" {
    name = var.vnet_name
    resource_group_name = var.network_resource_group_name

}