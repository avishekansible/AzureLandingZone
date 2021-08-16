resource "azurerm_storage_encryption_scope" "ses" {
  name                      = var.res_ses_name
  storage_account_id        = var.res_storage_account_id
  source                    = "Microsoft.Storage" 
}