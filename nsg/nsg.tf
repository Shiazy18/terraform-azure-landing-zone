resource "azurerm_network_security_group" "nsg" {
    count = var.need_nsg == true ? 1 : 0
    name = var.network_security_group_name
    location = var.location
    resource_group_name = var.network_resource_group_name
}