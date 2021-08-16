resource "azurerm_key_vault_access_policy" "kv" {
  key_vault_id       = var.res_key_vault_id
  tenant_id          = var.res_tenant_id
  object_id          = var.res_object_id
  key_permissions    = var.res_key_permissions
  secret_permissions = var.res_secret_permissions
}