variable "omsla_name" {
  type        = string
  description = "Log Analytics: Log Analytics Name"
}

variable "location" {
  type        = string
  description = "Azure Region Location Name for the Resource Group"
}

variable "rg_name" {
  type        = string
  description = "Resource Group Name"
}

variable "tags" {
  type        = map
  description = "Resource Group Tags"
}

variable "omsla_sku" {
  type        = string
  description = "Log Analytics: Log Analytics Sku"
}

variable "mon_diag_name" {
  type        = string
  description = "Monitor Diagnostic: Name"
}

variable "mon_res_id" {
  type        = list
  description = "Monitor Diagnostic: Monitor Target Resource ID"
}
