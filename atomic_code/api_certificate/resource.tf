resource "azurerm_api_management_certificate" "api_certificate" {
  name                = var.res_api_cert_name
  api_management_name = var.res_apim_name
  resource_group_name = var.res_rg_name
  data                = filebase64(var.res_api_cert_file)
}