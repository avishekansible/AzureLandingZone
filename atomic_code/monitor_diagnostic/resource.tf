resource "azurerm_monitor_diagnostic_setting" "diag" {
  count                      = length(var.res_mon_res_id)
  name                       = var.res_mon_diag_name
  target_resource_id         = var.res_mon_res_id[count.index]
  log_analytics_workspace_id = var.res_mon_la_ws_id

  metric {
    category = "AllMetrics"

    retention_policy {
      enabled = false
    }
  }
}