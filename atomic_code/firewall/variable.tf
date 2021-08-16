variable "res_fw_name" {
  type        = string
  description = "Firewall: Firewall Name"
}

variable "res_location" {
  type        = string
  description = "Firewall: Azure Region Location Name"
}

variable "res_pip_name" {
  type        = string
  description = "foo bar"
}

variable "res_fw_rg_name" {
  type        = string
  description = "Firewall: Firewall Resource Group Name"
}

variable "res_fw_subnet_id" {
  type        = string
  description = "Firewall: Firewall Subnet ID"
}

variable "res_fw_pip_id" {
  type        = string
  description = "Firewall: Firewall Pulic IP ID"
}

variable "res_tags" {
  type        = map
  description = "Firewall: Default Tags Map"
}