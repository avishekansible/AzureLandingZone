variable "res_vnet_peer_name" {
  type        = string
  description = "vNet Peer: vNet Peer Name"
}

variable "res_vnet_rg_name" {
  type        = string
  description = "vNet Peer: vNet Peer Resource Group Name"
}

variable "res_vnet_name" {
  type        = string
  description = "vNet Peer: vNet Peer Name"
}

variable "res_remote_vnet_id" {
  type        = string
  description = "vNet Peer: vNet Peer Remote vNet ID"
}

variable "res_use_remote_gw" {
  type        = string
  description = "vNet Peer: vNet Peer Use Remote Gateway"
}

variable "res_allow_vnet_access" {
  type        = string
  description = "vNet Peer: vNet Peer Allow vNet Access"
}

variable "res_allow_fw_traffic" {
  type        = string
  description = "vNet Peer: vNet Peer Forwarded Traffic"
}

variable "res_allow_gw_transit" {
  type        = string
  description = "vNet Peer: vNet Peer allow Gateway Transit"
}

variable "res_dependency" {
  type        = bool
  description = "This is an implicit dependency to enforce the order of operations on vNet peerings."
}