# Outputs: Key Vault Secret
output "res_out_kv_key_version" {
  value = azurerm_key_vault_key.keyvault_key.version
}