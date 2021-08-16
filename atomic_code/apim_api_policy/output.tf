output "res_out_apim_api_policy_id" {
  value = {
    for policy in azurerm_api_management_api_policy.api_policy:
    policy.api_name => policy.id
  }
}