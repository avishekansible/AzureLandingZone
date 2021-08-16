output "res_out_appgw_id" {
  value = azurerm_application_gateway.appgw.id
}

output "res_out_appgw_be_addr_pool" {
  value = azurerm_application_gateway.appgw.backend_address_pool
}

output "res_out_appgw_fe_ip_configuration" {
  value = azurerm_application_gateway.appgw.frontend_ip_configuration
}
