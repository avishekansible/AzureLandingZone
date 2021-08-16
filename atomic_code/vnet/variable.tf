# Variables: vNet
variable "res_vnet_name" {
  type        = string
  description = "vNet: Virtual Network Name"
}

variable "res_location" {
  type        = string
  description = "vNet: Azure Region Location Name"
}

variable "res_vnet_rg_name" {
  type        = string
  description = "vNet: Resource Group Name"
}

variable "res_vnet_address_prefix" {
  type        = list
  description = "vNet: List of vNet CIDRs"
}

variable "res_vnet_dns_servers" {
  type        = list
  description = "vNet: List of DNS Servers IP addresses (Blank)"
}

variable "res_tags" {
  type        = map
  description = "vNet: Default Tags Map"
}
