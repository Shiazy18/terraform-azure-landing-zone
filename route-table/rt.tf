resource "azurerm_route_table" "rt" {
    name = var.route_table_name
    location = var.location
    resource_group_name = var.network_resource_group_name
  
}