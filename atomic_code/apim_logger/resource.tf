resource "azurerm_api_management_logger" "apim-logger" {
  name                = var.res_name
  api_management_name = var.res_api_management_name
  resource_group_name = var.res_rg_name
  resource_id         = var.res_resource_id

  application_insights {
    instrumentation_key = var.res_instrumentation_key
  }
}