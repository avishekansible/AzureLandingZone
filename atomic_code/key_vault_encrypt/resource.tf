resource "azurerm_key_vault_key" "keyvault_key" {
  name         = var.res_kvencrypt_name
  key_vault_id = var.res_key_vault_id
  key_type     = "RSA"
  key_size     = 2048
  key_opts     = var.res_key_opts
}
