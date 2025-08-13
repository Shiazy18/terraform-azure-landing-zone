variable "need_nsg" {
    type = bool
    description = "Mark it as false if route table is not needed for your infra, yu already have the vnets created"
    default = true
}

variable "location" {
  type = string
  description = "Location where your modules will be created"
}

variable "route_table_name" {
    type = string
    description = "(Required) The name of the route table within which create the route. Changing this forces a new resource to be created."
}

variable "route_name" {
  type = string
  description = "(Required) The name of the route. Changing this forces a new resource to be created."
}
variable "address_prefix" {
  type = string
  description = "(Required) The destination to which the route applies. Can be CIDR (such as 10.1.0.0/16) or Azure Service Tag (such as ApiManagement, AzureBackup or AzureMonitor) format."
}

variable "next_hop_type" {
  type = string
  description = "(Required) The type of Azure hop the packet should be sent to. Possible values are VirtualNetworkGateway, VnetLocal, Internet, VirtualAppliance and None."
}