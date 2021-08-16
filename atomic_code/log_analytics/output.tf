output "res_out_la_id" {
  value = azurerm_log_analytics_workspace.la.id
}

output "res_out_la_primary_shared_key" {
  value = azurerm_log_analytics_workspace.la.primary_shared_key
  sensitive = true
}

output "res_out_la_workspace_id" {
  value = azurerm_log_analytics_workspace.la.id
}
