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
}

variable "sa_name" {
  type        = string
  description = "Storage Account: Name"
}

variable "account_tier" {
  type        = string
  description = "Storage Account: Account Tier"
}

variable "account_replication_type" {
  type        = string
  description = "Storage Account: Account Replication Type"
}

variable "account_type" {
  type        = string
  description = "Storage Account: Account Type"
}

variable "kv_name" {
  type        = string
  description = "Key Vault: Key Vault Name"
}

variable "disk_encryption" {
  type        = string
  description = "Key Vault: Key Vault Disk Encryption"
}

variable "tenant_id" {
  type        = string
  description = "Key Vault: Key Vault Tenant ID"
}

variable "res_container_name" {
  type        = string
  description = "Storage Container: Name"
}

variable "res_access_type" {
  type        = string
  description = "Storage Container: The Access Level configured for this Container"
}

variable "res_kvencrypt_name" {
  type        = string
  description = "Key Vault Encryption: Key Vault Encryption Secret Name"
}

variable "res_key_opts" {
  type        = list
  description = "Key Vault Policy: List of Key Permissions"
}

variable "res_key_permissions" {
  type        = list
  description = "Key Vault Policy: List of Key Permissions"
}

variable "res_secret_permissions" {
  type        = list
  description = "Key Vault Policy: List of Secret Permissions"
}

variable "res_ses_name" {
  type        = string
  description = "Storage Encryption Scope: Name"
}
