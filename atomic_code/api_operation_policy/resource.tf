resource "azurerm_api_management_api_operation_policy" "api_operation_policy" {
  count               = length(var.res_api_operation_policy)
  api_name            = var.res_api_name
  api_management_name = var.res_apim_name
  resource_group_name = var.res_rg_name
  operation_id        = var.res_api_operation_policy[count.index].operationid
  xml_content         = var.res_api_operation_policy[count.index].policy
}
