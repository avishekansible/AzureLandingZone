variable "res_name" {
  type        = string
  description = "SqlFirewallRule: name"
}

variable "res_rg_name" {
  type        = string
  description = "SqlFirewallRule: Resource group name"
}

variable "res_sql_server" {
  type        = string
  description = "SqlFirewallRule: Sql Server Name"
}

variable "res_start_ip_address" {
  type        = string
  description = "SqlFirewallRule: Start IP Address"
}

variable "res_end_ip_address" {
  type        = string
  description = "SqlFirewallRule: End IP Address"
}