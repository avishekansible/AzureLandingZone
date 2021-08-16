variable "res_subnets_info" {
  type        = list
  description = "NSG Rules: Subnet Info List"
}
variable "res_nsg_rules" {
  type        = list
  description = "NSG Rules: List of Network Security Group Rules"
}
variable "res_vnet_rg_name" {
  type        = string
  description = "NSG Rules: vNet Resource Group Name"
}