resource "azurerm_storage_account" "sa" {
  name                      = var.res_sa_name
  resource_group_name       = var.res_sa_rg_name
  location                  = var.res_location
  account_tier              = var.res_account_tier
  account_kind              = var.res_account_type
  account_replication_type  = var.res_replication_type
  enable_https_traffic_only = true
  tags                      = var.res_tags
}