resource "azurerm_subnet" "subnet" {
  count = var.need_subnet == true ? 1 : 0
  name = var.subnet_name
  virtual_network_name = var.vnet_name
  address_prefixes = var.subnet_address_prefix
  resource_group_name = var.network_resource_group_name 
}

