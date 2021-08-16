variable "res_gw_name" {
  type        = string
  description = "ExpressRoute Gateway: Name"
}

variable "res_location" {
  type        = string
  description = "ExpressRoute Gateway: Location"
}

variable "res_rg_name" {
  type        = string
  description = "ExpressRoute Gateway: Resource group name"
}

variable "res_tags" {
  type        = map(string)
  description = "ExpressRoute Gateway: Tags"
}

variable "res_type" {
  type        = string
  description = "ExpressRoute Gateway: Type - ie express route"
}

variable "res_sku" {
  type        = string
  description = "ExpressRoute Gateway: sku - basic - standard etc"
}

variable "res_public_ip_address_id" {
  type        = string
  description = "ExpressRoute Gateway: Public IP"
}

variable "res_gw_private_ip_allocation" {
  type        = string
  description = "ExpressRoute Gateway: Private IP Address Allocation Type"
}

variable "res_subnet_id" {
  type        = string
  description = "ExpressRoute Gateway: subnet id"
}

variable "res_gwc_name" {
  type        = string
  description = "ExpressRoute Gateway Connection: Name"
}

variable "res_circuit_id" {
  type        = string
  description = "ExpressRoute Connection: Circuit ID"
}

variable "res_authorization_key" {
  type        = string
  description = "ExpressRoute Connection: Authorization key"
}
