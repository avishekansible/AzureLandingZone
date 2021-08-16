variable "rg_name" {
  type        = string
  description = "Resource Group: Resource Group Name"
}

variable "location" {
  type        = string
  description = "Resource Group: Azure Region Location Name"
}

variable "tags" {
  type        = map
  description = "Tag Details"
}

variable "zone_name" {
  type        = string
  description = "Private DNS: Zone Name"
}
