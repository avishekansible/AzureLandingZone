resource "azurerm_api_management_api_policy" "api_policy" {
    for_each = { for policy in var.api_name_policy_mapping: policy.apiName => policy }
  api_name            = each.value.apiName
  api_management_name =  var.res_apim_name
  resource_group_name = var.res_rg_name
  xml_content = file("${path.module}/api_policy/${each.value.policyFile}")
}