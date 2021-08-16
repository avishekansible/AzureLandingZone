variable "res_zone_name" {
  type        = string
  description = "DNS Zone: Zone Name"
}

variable "res_rg_name" {
  type        = string
  description = "DNS Zone: Resource Group Name"
}

variable "res_tags" {
  type        = map(string)
  description = "DNS Zone: Default Tags Map"
}
