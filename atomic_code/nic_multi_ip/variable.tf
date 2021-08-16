variable "res_nic_name" {
  type        = string
  description = "NIC: Network Interface Card Name"
}

variable "res_location" {
  type        = string
  description = "NIC: Azure Region Location Name"
}

variable "res_rg_name" {
  type        = string
  description = "NIC: Resource Group Name"
}

variable "res_tags" {
  type        = map
  description = "NIC: Default Tags Map"
}

variable "res_nic_ip_configs" {
  type = list(object({
    name                          = string
    subnet_id                     = string
    private_ip_address            = string
    private_ip_address_allocation = string
    public_ip_address_id          = string
    primary                       = bool
  }))
  description = "List of IP configuration settings objects"
}
