variable "res_record_name" {
  type        = string
  description = "DNS CNAME Record: Record Name"
}

variable "res_rg_name" {
  type        = string
  description = "DNS CNAME Record: Resource Group Name"
}

variable "res_zone_name" {
  type        = string
  description = "DNS CNAME Record: Name of Parent DNS Zone"
}

variable "res_ttl" {
  type        = string
  description = "DNS CNAME Record: Time To Live"
}

variable "res_record" {
  type        = string
  description = "DNS CNAME Record: Target DNS Name"
}

variable "res_tags" {
  type        = map(string)
  description = "DNS CNAME Record: Default Tags Map"
}
