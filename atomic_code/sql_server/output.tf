output "res_out_server_name" {
  value = azurerm_sql_server.svr.name
}

output "res_out_server_id" {
  value = azurerm_sql_server.svr.id
}

output "res_out_server_fqdn" {
  value = azurerm_sql_server.svr.fully_qualified_domain_name
}