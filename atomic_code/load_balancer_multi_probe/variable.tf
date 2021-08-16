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
  type        = map(string)
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

variable "res_ilb_public_ip_address_id" {
  type        = string
  description = "Load Balancer: Load Balancer Public IP Address ID"
  default     = null
}

variable "res_ilb_be_name" {
  type        = string
  description = "Load Balancer: Load Balancer Back End Name"
}

variable "res_ilb_probe_config" {
  type = map(object({
    protocol            = string
    port                = number
    request_path        = string
    interval_in_seconds = number
    number_of_probes    = number
  }))
  description = "Load Balancer: Load Balancer Probe Configuration Objects"
}

variable "res_ilb_rule_config" {
  type = map(object({
    protocol           = string
    frontend_port      = number
    backend_port       = number
    probe_name         = string
    enable_floating_ip = bool
  }))
  description = "Load Balancer: List of Load Balancer Rule Configuration Objects"
}
