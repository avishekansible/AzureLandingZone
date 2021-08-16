resource "azurerm_storage_encryption_scope" "sae" {
  name                      = var.res_sae_name
  storage_account_id        = var.res_storage_account_id
  source                    = "Microsoft.Storage" 
}