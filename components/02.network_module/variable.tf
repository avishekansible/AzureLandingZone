variable "sa_name" {
  type = string
  description = "Storage Account Name"
}

variable "sa_rg_name"{
  type = string
  description = "Resource group Name where storage account is created"
}

variable "container_name" {
  type        = string
  description = "Name of the Storage account container"
}

variable "vnet_name" {
  type        = string
  description = "vNet: Vnet Name"
}

variable "location" {
  type        = string
  description = "vNet: Azure Region Location Name"
}

variable "vnet_address_prefix" {
  type        = list
  description = "vNet: Vnet Address Prefix"
}

variable "vnet_dns_servers" {
  type        = list
  description = "vNet: Vnet DNS Servers"
}

variable "tags" {
  type        = map
  description = "vNet: Default Tags Map"
}

variable "subnets_info" {
  type        = list
  description = "Subnet: Subnet Info"
}

variable "serv_endp" {
  type        = list
  description = "serv_endp: Service Endpoints"
}

variable "nsg" {
  description = "NSG Info"
  type = map(object({
    nsgs = map(map(string))
  }))
}

variable "udr" {
  description = "UDR Information"
  type = map(object({
    routes = map(map(string))
  }))
}