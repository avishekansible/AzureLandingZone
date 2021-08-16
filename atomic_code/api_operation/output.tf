output "res_out_apioperation_id" {
  value = azurerm_api_management_api_operation.api_operation.*.id
}
