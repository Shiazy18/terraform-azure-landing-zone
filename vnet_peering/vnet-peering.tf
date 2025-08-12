resource "azurerm_virtual_network_peering" "peering" {
    count = var.need_vnetpeering == true ? 1 : 0
    name = "peering-${var.source_virtual_network_name}-${var.destination_virtual_network_name}"
    resource_group_name = var.network_resource_group_name
    virtual_network_name = var.source_virtual_network_name
    remote_virtual_network_id = data.azurerm_virtual_network.destination.id
  
}