resource "azurerm_route_table" "rt" {
    name = var.route_table_name
    location = var.location
    resource_group_name = var.network_resource_group_name
  
}

resource "azurerm_route" "define_route" {
    name = var.route_name
    resource_group_name = azurerm_route_table.rt.resource_group_name
    route_table_name = azurerm_route_table.rt.name
    address_prefix = var.address_prefix
    next_hop_type = var.next_hop_type
  
}