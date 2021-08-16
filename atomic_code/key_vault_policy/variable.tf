variable "res_tenant_id" {
  type        = string
  description = "Key Vault: Tenant ID"
}

variable "res_key_vault_id" {
  type        = string
  description = "Key Vault: keyvault ID"
}

variable "res_object_id" {
  type        = string
  description = "Key Vault: Object ID"
}

variable "res_key_permissions" {
  type        = list
  description = "Key Vault Policy: List of Key Permissions"
}

variable "res_secret_permissions" {
  type        = list
  description = "Key Vault Policy: List of Secret Permissions"
}