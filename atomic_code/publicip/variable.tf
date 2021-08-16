variable "res_pip_name" {
  type        = string
  description = "Public IP: Name"
}

variable "res_location" {
  type        = string
  description = "Public IP: Azure Region Location Name"
}

variable "res_pip_rg_name" {
  type        = string
  description = "Public IP: Resource Group Name"
}

variable "res_pip_sku" {
  type        = string
  description = "Public IP: Sku"
}

variable "res_pip_allocation_method" {
  type        = string
  description = "Public IP: Allocation Method"
}

variable "res_tags" {
  type        = map
  description = "Public IP: Default Tags Map"
}
