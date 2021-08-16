variable "res_ilb_name" {
  type        = string
  description = "Load Balancer: Load Balancer Name"
}

variable "res_location" {
  type        = string
  description = "Load Balancer: Azure Region Location Name"
}

variable "res_ilb_sku" {
  type        = string
  description = "Load Balancer: Load Blancer Sku"
}

variable "res_ilb_rg_name" {
  type        = string
  description = "Load Balancer: Load Balancer Resource Group Name"
}

variable "res_ilb_subnet_id" {
  type        = string
  description = "Load Balancer: Load Balancer Subnet ID"
}

variable "res_tags" {
  type        = map
  description = "Load Balancer: Default Tags Map"
}

variable "res_ilb_ip_config_name" {
  type        = string
  description = "Load Balancer: Load Balancer IP Config Name"
}

variable "res_ilb_ip_address" {
  type        = string
  description = "Load Balancer: Load Balancer IP Address"
  default     = null
}

variable "res_ilb_ip_allocation" {
  type        = string
  description = "Load Balancer: Load Balancer IP Allocation"
}

variable "res_ilb_be_name" {
  type        = string
  description = "Load Balancer: Load Balancer Back End Name"
}

variable "res_ilb_probe_port" {
  type        = string
  description = "Load Balancer: Load Balancer Probe Port"
}

variable "res_ilb_rules_info" {
  type        = list(list(string))
  description = "Load Balancer: List of Load Balancer Rules Information"
}

// variable "res_ilb_fe_ip_name" {
//     type        = string
//     description = "foo bar"
// }

