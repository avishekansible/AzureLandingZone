output "res_out_appinsights_instrumentation_key" {
  value = azurerm_application_insights.apim_appinsights.*.instrumentation_key
}

output "res_out_appinsights_app_id" {
  value = azurerm_application_insights.apim_appinsights.*.app_id
}

output "res_out_appinsights_id" {
  value = azurerm_application_insights.apim_appinsights.*.id
}