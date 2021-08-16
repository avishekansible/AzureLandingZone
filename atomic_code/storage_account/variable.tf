variable "res_sa_name" {
  type        = string
  description = "Storage Account: Name"
}
variable "res_sa_rg_name" {
  type        = string
  description = "Storage Account: Resource Group Name"
}
variable "res_location" {
  type        = string
  description = "Storage Account: Location"
}
variable "res_account_tier" {
  type        = string
  description = "Storage Account: Account Tier"
}

variable "res_account_type" {
  type        = string
  description = "Storage Account: Account Type"
}

variable "res_replication_type" {
  type        = string
  description = "Storage Account: Replication Type"
}
variable "res_tags" {
  type        = map
  description = "Default Tags Map"
}