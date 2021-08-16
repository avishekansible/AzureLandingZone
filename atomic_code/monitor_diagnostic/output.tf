output "res_out_diag_id" {
value = azurerm_monitor_diagnostic_setting.diag.*.id
}