variable "res_subnet_id" {
  type        = list(string)
  description = "NSG Association: List of Subnet IDs"
}

variable "res_nsg_id" {
  type        = string
  description = "NSG Association: Network Security Group ID"
}