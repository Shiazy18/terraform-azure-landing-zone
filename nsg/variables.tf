variable "need_nsg" {
    type = bool
    description = "Mark it as false if network security group is not needed for your infra, yu already have the nsg created. You won't be able to create subnet with nsg associated to it"
    default = true
}

variable "location" {
  type = string
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "network_security_group_name" {
    type = string
    description = "(Required) Specifies the name of the network security group. Changing this forces a new resource to be created."
}

variable "network_resource_group_name" {
  type = string
  description = "(Required) The name of the resource group in which to create the network security group. Changing this forces a new resource to be created."
}

variable "nsg_rules" {
  description = "List of NSG rules"
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string   # "Inbound" or "Outbound"
    access                     = string   # "Allow" or "Deny"
    protocol                   = string   # "Tcp", "Udp" or "*"
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
}