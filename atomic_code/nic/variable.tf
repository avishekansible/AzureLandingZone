variable "res_nic_name" {
  type        = string
  description = "NIC: Network Interface Card Name"
}

variable "res_location" {
  type        = string
  description = "NIC: Azure Region Location Name"
}

variable "res_rg_name" {
  type        = string
  description = "NIC: Resource Group Name"
}

variable "res_tags" {
  type        = map
  description = "NIC: Default Tags Map"
}

variable "res_nic_ip_config_name" {
  type        = string
  description = "NIC: Network Interface Card IP Config Name"
}

variable "res_subnet_id" {
  type        = string
  description = "NIC: Subnet ID"
}

variable "res_nic_address_allocation" {
  type        = string
  description = "Network Interface Card Address Allocation"
}

variable "res_primary_nic" {
  type        = string
  description = "Primary Network Interface Card"
}

variable "res_pip_id" {
  type        = string
  description = "Public IP ID"
}