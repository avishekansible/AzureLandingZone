variable "res_fw_name" {
  type        = string
  description = "Firewall Network Rules: Firewall Network Rules Name"
}

variable "res_fw_rg_name" {
  type        = string
  description = "Firewall Network Rules: Firewall Network Rule Resource Group"
}

variable "res_fw_net_rules" {
  type        = list(list(string))
  description = "Firewall Network Rules: List of Firewall Network Rules"
}
