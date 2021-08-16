variable "res_pip_id" {
  type        = string
  description = "VPN Gateway Public IP ID"
}

variable "res_location" {
  type        = string
  description = "Default Azure Region"
}

variable "res_vnet_rg_name" {
  type        = string
  description = "vNet Resource Group Name"
}

variable "res_lng_name" {
  type        = string
  description = "Local Network Gateway Name - On-Prem Info"
}

variable "res_remote_gateway_pip" {
  type        = string
  description = "On-Prem Remote Gateway"
}

variable "res_onprem_address_space" {
  type        = list
  description = "On-Prem IP Address"
}

variable "res_vng_name" {
  type        = string
  description = "Virtual Network Gateway Name"
}

variable "res_gw_subnet_id" {
  type        = string
  description = "GatewaySubnet ID - Output from vNet Module"
}

variable "res_secret_shared_key" {
  type        = string
  description = "VPN Secret Shared Key"
}

variable "res_bgp_asn" {
  type        = string
  description = "BGP Speaker's ASN"
}

variable "res_bgp_peering" {
  type        = string
  description = "The BGP Peering address"
}
