variable "res_bkup_vault_name" {
  type        = string
  description = "Backup Vault: Backup Vault Name"
}
variable "res_location" {
  type        = string
  description = "Backup Vault: Azure Region Location Name"
}
variable "res_bkup_vault_rg_name" {
  type        = string
  description = "Backup Vault: Backup Vault Resource Group Name"
}
variable "res_bkup_vault_sku_name" {
  type        = string
  description = "Backup Vault: Backup Vault Sku Name"
}
variable "res_tags" {
  type        = map
  description = "Backup Vault: Default Tags Map"
}