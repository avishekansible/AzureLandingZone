output "res_out_eh_namespace_id" {
  value = azurerm_eventhub_namespace.eh_ns.id
}

output "res_out_eh_namespace_conn_string" {
  value = azurerm_eventhub_namespace.eh_ns.default_primary_connection_string
}

output "res_out_eh_namespace_primary_key" {
  value = azurerm_eventhub_namespace.eh_ns.default_primary_key
}