variable "res_record_name" {
  type        = string
  description = "DNS A Record: Record Name"
}

variable "res_rg_name" {
  type        = string
  description = "DNS A Record: Resource Group Name"
}

variable "res_zone_name" {
  type        = string
  description = "DNS A Record: Name of Parent DNS Zone"
}

variable "res_ttl" {
  type        = string
  description = "DNS A Record: Time To Live"
}

variable "res_records" {
  type        = list(string)
  description = "DNS A Record: List of IPv4 Addresses"
}

variable "res_tags" {
  type        = map(string)
  description = "DNS A Record: Default Tags Map"
}
