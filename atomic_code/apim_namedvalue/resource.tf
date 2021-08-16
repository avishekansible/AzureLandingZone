resource "azurerm_api_management_named_value" "apim-nv" {
  count               = length(var.res_apim_nv_info)
  name                = var.res_apim_nv_info[count.index].name
  display_name        = var.res_apim_nv_info[count.index].display_name
  value               = var.res_apim_nv_info[count.index].value
  resource_group_name = var.res_rg_name
  api_management_name = var.res_api_management_name
}