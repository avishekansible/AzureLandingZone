variable "res_sig_name" {
  type        = string
  description = "Shared Image Gallery: Name"
}

variable "res_sig_rg_name" {
  type        = string
  description = "Shared Image Gallery: Resource Group Name"
}

variable "res_location" {
  type        = string
  description = "Shared Image Gallery: Location"
}

variable "res_tags" {
  type        = map
  description = "Default Tags Map"
}
