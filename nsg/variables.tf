variable "need_nsg" {
    type = bool
    description = "Mark it as false if route table is not needed for your infra, yu already have the vnets created"
    default = true
}

variable "location" {
  type = string
  description = "Location where your modules will be created"
}

variable "network_security_group_name" {
    type = string
    description = "(Required) The name of the route table within which create the route. Changing this forces a new resource to be created."
}

variable "network_resource_group_name" {
  type = string
  description = "(Required) The name of the route. Changing this forces a new resource to be created."
}