resource "azurerm_api_management_backend" "example_backend" {
  name                = var.res_api_backend_name
  resource_group_name = var.res_rg_name
  api_management_name = var.res_api_name
  protocol            = var.res_protocol
  url                 = var.res_url
  tls {
    validate_certificate_chain = var.res_validate_certificate_chain
    validate_certificate_name = var.res_validate_certificate_name
  }
}