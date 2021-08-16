variable "res_pip_name" {
  type        = string
  description = "VPN Gateway Public IP Name"
}

variable "res_location" {
  type        = string
  description = "Default Azure Region"
}

variable "res_vnet_rg_name" {
  type        = string
  description = "vNet Resource Group Name"
}

variable "res_vpn_type" {
  type        = string
  description = "VPN type - PolicyBased or RouteBased"
}

variable "res_sku" {
  type        = string
  description = "Gateway SKU, e.g. VpnGw1"
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

variable "res_connection_protocol" {
  type        = string
  description = "Connection protocol, IKEv1 or IKEv2"
}

variable "res_use_policy_based_traffic_selectors" {
  type        = bool
  description = "Use polcy-based traffic selectors for a route-based VPN gateway"
  default     = false
}

variable "res_ipsec_policy" {
  type = list(object({
    dh_group         = string
    ike_encryption   = string
    ike_integrity    = string
    ipsec_encryption = string
    ipsec_integrity  = string
    pfs_group        = string
    sa_datasize      = number
    sa_lifetime      = number
  }))
  description = "Custom IPsec policy, can specify 0 or 1 of these"
  default     = []
}
