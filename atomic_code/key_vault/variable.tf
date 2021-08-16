variable "res_kv_name" {
  type        = string
  description = "Key Vault: Key Vault Name"
}

variable "res_location" {
  type        = string
  description = "Key Vault: Azure Region Location Name"
}

variable "res_rg_name" {
  type        = string
  description = "Key Vault: Resource Group Name"
}

variable "res_tenant_id" {
  type        = string
  description = "Key Vault: Tenant ID"
}

variable "res_tags" {
  type        = map
  description = "Key Vault: Default Tags Map"
}

variable "res_disk_encryption" {
  type        = bool
  description = "Key Vault: Key Vault Disk Encryption"
}
