resource "azurerm_storage_share" "share" {
  name                 = var.res_share_name
  storage_account_name = var.res_sa_name
  quota                = var.res_quota
}