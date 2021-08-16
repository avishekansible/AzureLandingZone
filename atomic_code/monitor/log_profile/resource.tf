resource "azurerm_monitor_log_profile" "log" {
  name               = var.res_mon_log_profile_name
  categories         = var.res_mon_categories
  locations          = ["australiaeast"]
  storage_account_id = var.res_mon_sa_id

  retention_policy {
    enabled = true
    days    = var.res_mon_retention_days
  }
}