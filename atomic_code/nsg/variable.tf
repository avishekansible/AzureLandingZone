
variable "res_location" {
  type        = string
  description = "NSG: Azure Region Location Name"
}

variable "res_vnet_rg_name" {
  type        = string
  description = "NSG: vNet Resource Group Name"
}

variable "res_tags" {
  type        = map
  description = "NSG: Default Tags Map"
}

variable "res_nsg_info" {
    description = "NSG Info"
    type     = map (object({
        nsgs = map(map(string))
    }))
}
