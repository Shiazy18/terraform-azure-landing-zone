resource "azurerm_subnet" "subnet" {
  name = var.subnet_name
  virtual_network_name = data.azurerm_virtual_network.vnet.id
  address_prefixes = [  ]
  resource_group_name = var.network_resource_group_name
  
}