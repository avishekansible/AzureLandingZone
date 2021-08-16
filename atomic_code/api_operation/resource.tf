resource "azurerm_api_management_api_operation" "api_operation" {
  count               = length(var.res_api_operation)
  operation_id        = var.res_api_operation[count.index].operationid
  api_name            = var.res_api_name
  api_management_name = var.res_apim_name
  resource_group_name = var.res_rg_name
  display_name        = var.res_api_operation[count.index].displayname
  method              = var.res_api_operation[count.index].method
  url_template        = var.res_api_operation[count.index].urltemplate
  description         = var.res_api_operation[count.index].description

  response {
    status_code = 200
  }
}