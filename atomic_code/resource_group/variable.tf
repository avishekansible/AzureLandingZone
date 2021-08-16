# Variables: Resource Group
variable "res_rg_name" {
  type        = string
  description = "Resource Group: Resource Group Name"
}

variable "res_location" {
  type        = string
  description = "Resource Group: Azure Region Location Name"
}

variable "res_tags" {
  type        = map
  description = "Resource Group: Default Tags Map"
}