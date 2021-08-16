output "res_out_subnets_names" {
  value = azurerm_subnet.subnet.*.name
}

output "res_out_subnets_ids" {
  value = azurerm_subnet.subnet.*.id
}

output "res_out_subnets_info" {
  value = zipmap(azurerm_subnet.subnet.*.name, azurerm_subnet.subnet.*.id)
}

output "res_out_subnets_address_ranges" {
  value = zipmap(azurerm_subnet.subnet.*.name, azurerm_subnet.subnet.*.address_prefix)
}

output "res_out_serv_endp" {
  value = azurerm_subnet.subnet.*.service_endpoints
}
