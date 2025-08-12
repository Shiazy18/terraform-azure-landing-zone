variable "need_vnetpeering" {
    type = bool
    description = "Mark it as false if vnet is not needed for your infra, yu already have the vnets created"
    default = true
}

variable "network_resource_group_name"{
  type = string
  description = "The name of your networing resource group where vnets, subnets, nsgs will be deployed"   
}

variable "location" {
  type = string
  description = "Location where your modules will be created"
}

variable "vnet_name" {
    type = string
    description = "Vnet name"
}

variable "address_space" {
    type = list(string)
    description = "address space for your vnet" 
}

variable "source_virtual_network_name" {
  
}

 variable "destination_virtual_network_name" {
   
 }