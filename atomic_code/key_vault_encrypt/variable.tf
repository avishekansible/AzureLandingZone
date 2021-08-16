variable "res_kvencrypt_name" {
  type        = string
  description = "Key Vault Encryption: Key Vault Encryption Secret Name"
}

variable "res_key_vault_id" {
  type        = string
  description = "Key Vault: keyvault ID"
}

variable "res_key_opts" {
  type        = list
  description = "Key Vault Policy: List of Key Permissions"
}